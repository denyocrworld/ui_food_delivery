import 'util.dart';

releaseMagicBook() async {
  String target =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__flutter_magic_book";

  await copyAll(target);

  deleteDir("$target\\lib\\_");
  deleteDir(
    "$target\\lib\\module",
    onlyContent: true,
    exceptions: [
      "app",
      "online_class",
      
      
      
      
      
    ],
  );

  
  commonDelete(target);
  

  useFbkMainNavigationView(target);

  
  flutterMagicbookReadme(target);

  
  await generateCore(target);
  await formatLibDirectories(target);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: target,
  );
}
