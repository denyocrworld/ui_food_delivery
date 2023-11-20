import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ExListView extends StatefulWidget {
  static Map<String, ExListViewState> instance = {};
  final String? id;
  final Function(int page) futureBuilder;
  final double? height;
  final double? padding;
  final Gradient? gradient;
  final Color? color;
  final Axis? scrollDirection;
  final bool wrapMode;
  final bool shrinkWrap;
  final double? bottomMargin;

  static reloadAll() async {
    for (var key in instance.keys) {
      instance[key]?.reload();
    }
  }

  final Function(int, Map) builder;
  const ExListView({
    this.id,
    required this.builder,
    required this.futureBuilder,
    this.height,
    this.padding,
    this.gradient,
    this.color,
    this.scrollDirection,
    this.wrapMode = false,
    this.shrinkWrap = false,
    this.bottomMargin,
    Key? key,
  }) : super(key: key);

  @override
  State<ExListView> createState() => ExListViewState();
}

class ExListViewState extends State<ExListView> {
  bool loading = true;
  bool bottomLoading = false;
  Response? response;
  DioException? dioException;
  List<Map?> items = [];
  int page = 1;
  ScrollController scrollController = ScrollController();

  bool singleModeLoading = false;

  Future onLoading({
    bool nextPage = false,
  }) async {
    if (!mounted) return;
    if (!nextPage) {
      page = 1;
      items.clear();
      loading = true;
      setState(() {});
    } else {
      page++;
    }

    dioException = null;
    try {
      response = await widget.futureBuilder(page);
    } on DioException catch (_) {
      dioException = _;
      debugPrint("DioException: $_");
    } on Exception catch (_) {
      debugPrint("Exception: $_");
    }

    if (dioException != null || response == null) {
      loading = false;
      if (mounted) setState(() {});
      return;
    }

    Map responseMap = response?.data;
    List data = responseMap["data"];

    if (data.isEmpty) {
      page--;
    }

    for (var i = 0; i < data.length; i++) {
      var item = data[i];
      items.add(item);
    }

    loading = false;
    if (mounted) setState(() {});
  }

  initScrollController() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset ==
          scrollController.position.maxScrollExtent) {
        onLoading(nextPage: true);
      }
    });
  }

  late String id;

  @override
  void initState() {
    super.initState();
    id = widget.id ?? const Uuid().v4();
    ExListView.instance[id] = this;
    initScrollController();
    onLoading();
  }

  @override
  void dispose() {
    super.dispose();
    ExListView.instance.remove(id);
    onLoading();
  }

  reload() async {
    if (mounted) {
      await onLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (widget.wrapMode) {
      return Wrap(
        children: List.generate(
          items.length,
          (index) {
            var item = (items[index] as Map);
            return widget.builder(index, item);
          },
        ),
      );
    }

    return SizedBox(
      height: widget.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Dio Error : ${dioException?.message}",
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.refresh),
            label: const Text("Retry"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              onLoading();
            },
          ),
        ],
      ),
    );
  }
}
