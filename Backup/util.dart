import 'dart:convert';
import 'dart:io';

copyAll(path) async {
  deleteDir(
    "$path\\",
    onlyContent: true,
    exceptions: [".git"],
  );

  await Future.delayed(const Duration(seconds: 1));
  Directory dir = Directory.current;
  List list = dir.listSync(recursive: false);
  for (var ff in list) {
    if (ff.path.endsWith("\\build")) continue;

    if (ff.path.endsWith(".git")) continue;

    if (ff is File) {
      if (ff.path.endsWith(".dart")) continue;
      if (ff.path.endsWith(".bat")) continue;
      if (ff.path.endsWith("config.json")) continue;
      if (ff.path.endsWith("pubspec.lock")) continue;
      await Process.run('cp', ['-r', ff.path, path])
          .then((ProcessResult results) {
        print(results.stdout);
      });
    } else if (ff is Directory) {
      await Process.run('cp', ['-r', ff.path, path])
          .then((ProcessResult results) {
        print(results.stdout);
      });
    }
  }
}

commonDelete(path) {
  deleteDir("$path\\doc");
  deleteDir("$path\\docs");
  deleteDir("$path\\lib\\firebase");
  deleteDir("$path\\lib\\online_class");
  deleteDir("$path\\lib\\pos");
  deleteDir("$path\\lib\\random");
  deleteDir("$path\\lib\\temp");
  deleteDir("$path\\lib\\tutorial");

  
  deleteDir("$path\\fic-exercises");
  deleteDir("$path\\test");
  deleteDir("$path\\web");

  deleteFile("$path\\lib\\firebase_options.dart");
  deleteFile("$path\\lib\\setup.dart");
  var f = File("$path\\lib\\setup_basic.dart");
  f.copySync("$path\\lib\\setup.dart");
  deleteFile("$path\\lib\\setup_basic.dart");
}

cleanModule(path) {
  deleteDir(
    "$path\\lib\\module",
    onlyContent: true,
  );
  addBlankFile("$path\\lib\\module");
}

cleanService(path) {
  deleteDir(
    "$path\\lib\\service",
    onlyContent: true,
    exceptions: [
      "main_storage_service",
    ],
  );
  addBlankFile("$path\\lib\\service");
}

cleanModel(path) {
  deleteDir(
    "$path\\lib\\model",
    onlyContent: true,
  );
  addBlankFile("$path\\lib\\model");
}

addBlankFile(dir) {
  var f = File("$dir\\_");
  f.createSync(recursive: true);
  f.writeAsStringSync("");
}

useFbkMainNavigationView(path) {
  var mainFile = File("$path\\lib\\main.dart");
  var mainFileContent = mainFile.readAsStringSync();
  mainFileContent =
      mainFileContent.replaceAll("CgMainView", "FbkMainNavigationView");
  mainFile.writeAsStringSync(mainFileContent);
}

useMainNavigationView(path) {
  var mainFile = File("$path\\lib\\main.dart");
  var mainFileContent = mainFile.readAsStringSync();
  mainFileContent =
      mainFileContent.replaceAll("CgMainView", "MainNavigationView");
  mainFile.writeAsStringSync(mainFileContent);
}

useContainer(path) {
  var mainFile = File("$path\\lib\\main.dart");
  var mainFileContent = mainFile.readAsStringSync();
  mainFileContent = mainFileContent.replaceAll("const CgMainView", "Container");

  print("use Container!");
  print(
      "MainNavigationView detected: ${mainFileContent.contains("MainNavigationView")}");
  mainFileContent = mainFileContent.replaceAll(
      "const MainNavigationView()",
      """
Scaffold(
            appBar: AppBar(
              title: const Text("Blank App"),
            ),
          )
"""
          .trim());
  mainFile.writeAsStringSync(mainFileContent);
}

formatLibDirectories(hyperUiPublicPath) async {
  runCommand(
    'flutter format $hyperUiPublicPath\\lib',
    workingDirectory: hyperUiPublicPath,
  );
}

flutterMagicbookReadme(path) {
  var readmeFile = File("$path\\README.md");
  readmeFile.writeAsStringSync("""
# Flutter Magic Book by DenyOcr
Figma<br>
https://www.figma.com/file/PreoFlFsdSfKIGFpNGwaT8/Flutter-MagicBook?node-id=305%3A189&t=uD0cPaYw88v2hTIy-1<br>

---

Repository:<br>
git clone https://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@github.com/denyocrworld/flutter_magic_book.git<br>
"""
      .trim());
}

runCommand(
  String command, {
  String? workingDirectory,
}) {
  try {
    Process.runSync(command, [],
        includeParentEnvironment: true,
        runInShell: true,
        workingDirectory: workingDirectory);
  } on Exception catch (err) {
    print(err);
  }
}

generateCore(hyperUiPublicPath) async {
  var libPath = "$hyperUiPublicPath\\lib\\";
  var dir = Directory(libPath);
  var list = dir.listSync(recursive: true);
  var importContent = """

"""
      .trimLeft();
  for (var f in list) {
    if (f is File) {
      if (f.path.endsWith(".dart") == false) continue;
      var importPath =
          f.path.toString().replaceAll(libPath, "").replaceAll("\\", "/");
      var exportLine = "export 'package:hyper_ui/$importPath';";
      if (importPath == "setup_basic.dart") continue;
      if (importPath == "main.dart") continue;
      if (importPath == "debug.dart") continue;
      if (importPath == "core.dart") continue;
      importContent += "$exportLine\n";
    }
  }

  var coreFile = File("$hyperUiPublicPath\\lib\\core.dart");
  coreFile.writeAsStringSync(importContent);
}

deleteFile(String path) {
  var file = File(path);
  if (file.existsSync()) {
    file.deleteSync(recursive: true);
  }
}

deleteDir(
  String path, {
  bool onlyContent = false,
  List<String> exceptions = const [],
}) {
  if (onlyContent) {
    var dir = Directory(path);
    var list = dir.listSync(recursive: false);
    for (var f in list) {
      var name = f.path.split("\\").last;
      if (exceptions.contains(name)) continue;

      if (f is File) {
        deleteFile(f.path);
      } else if (f is Directory) {
        if (f.existsSync()) {
          deleteDir(f.path);
        }
      }
    }
    return;
  }

  var file = Directory(path);
  if (file.existsSync()) {
    file.deleteSync(recursive: true);
  }
}

removeAllCommentInDir(String path) async {
  var dir = Directory(path);
  var list = dir.listSync(recursive: true);
  for (var f in list) {
    var name = f.path.split("\\").last;
    if (f.path.endsWith(".dart") == false) continue;
    File file = File(f.path);
    var content = file.readAsStringSync(encoding: utf8);
    content = content.replaceAll("://", "://");
    content = content.replaceAll(RegExp(r'
    content = content.replaceAll("://", "://");

    file.writeAsStringSync(content);
  }
}
