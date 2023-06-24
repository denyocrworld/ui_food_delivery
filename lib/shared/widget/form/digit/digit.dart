// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class QDigit extends StatefulWidget {
  final Function(String value) onChanged;
  QDigit({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<QDigit> createState() => _QDigitState();
}

class _QDigitState extends State<QDigit> {
  List<String> values = [];
  Map<int, FocusNode> focusNodes = {};

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      focusNodes[0]!.requestFocus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   "$values",
        //   style: TextStyle(
        //     fontSize: 12.0,
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () async {
                values = [];
                setState(() {});
                await Future.delayed(Duration(milliseconds: 250));
                focusNodes[0]!.requestFocus();
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 12.0,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: List.generate(4, (index) {
              if (focusNodes[index] == null) {
                focusNodes[index] = FocusNode();
              }
              return Expanded(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.only(
                    right: index < 3 ? 12 : 0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 2.0,
                        color: Colors.grey[700]!,
                      ),
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      key: GlobalKey(),
                      focusNode: focusNodes[index],
                      initialValue: values.length > index ? values[index] : "",
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      readOnly: values.length != index,
                      decoration: InputDecoration(
                        hintText: "",
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        filled: false,
                      ),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                      ),
                      onChanged: (value) async {
                        if (value == "") {
                          values.removeLast();
                        } else {
                          values.add(value);
                        }
                        setState(() {});
                        await Future.delayed(Duration(milliseconds: 50));
                        if (index == 0) {
                          focusNodes[1]!.requestFocus();
                        }
                        if (index == 1) {
                          focusNodes[2]!.requestFocus();
                        }
                        if (index == 2) {
                          focusNodes[3]!.requestFocus();
                        }

                        if (values.length == 4) {
                          widget.onChanged(values.join(""));
                        }
                      },
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
