import 'package:flutter/material.dart';

class QRadioFieldWithHeader extends StatefulWidget {
  final String label;
  final String? hint;
  final String? helper;
  final List<Map<String, dynamic>> items;
  final String? Function(List<Map<String, dynamic>> item)? validator;
  final Function(dynamic value, String? label) onChanged;
  final String? value;
  final bool? primary;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? radioListPadding;

  const QRadioFieldWithHeader({
    Key? key,
    required this.label,
    required this.items,
    this.validator,
    this.hint,
    this.helper,
    this.value,
    required this.onChanged,
    this.primary = true,
    this.padding,
    this.radioListPadding,
  }) : super(key: key);

  @override
  State<QRadioFieldWithHeader> createState() => _QRadioFieldWithHeaderState();
}

class _QRadioFieldWithHeaderState extends State<QRadioFieldWithHeader> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var item in widget.items) {
      items.add(Map.from(item));
      if (items.last["value"] == widget.value) {
        items.last["checked"] = true;
      }
    }
  }

  setAllItemsToFalse() {
    for (var item in items) {
      item["checked"] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.padding ??
          const EdgeInsets.only(
            bottom: 12.0,
          ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "${widget.label}",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                color: Color(0xfffcebd2),
                elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Text(
                    "Required",
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Color(0xfff1a63d),
                    ),
                  ),
                ),
              ),
            ],
          ),
          FormField(
            initialValue: false,
            validator: (value) => widget.validator!(items),
            enabled: true,
            builder: (FormFieldState<bool> field) {
              return InputDecorator(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.zero,
                ),
                child: Container(
                  child: ListView.builder(
                    primary: widget.primary,
                    shrinkWrap: true,
                    padding: widget.radioListPadding,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      var item = items[index];
                      return Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Color(0xfff0f0f0),
                            ),
                          ),
                        ),
                        child: RadioListTile(
                          title: Text("${item["label"]}"),
                          groupValue: true,
                          value: item["checked"] ?? false,
                          activeColor: Colors.green,
                          onChanged: (val) {
                            setAllItemsToFalse();
                            bool newValue = val ? false : true;
                            items[index]["checked"] = newValue;
                            field.didChange(true);
                            setState(() {});

                            String? label = items[index]["label"];
                            int foundIndex = items.indexWhere((item) => item["label"] == label);
                            dynamic value = items[foundIndex]["value"];
                            widget.onChanged(value, label);
                          },
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
