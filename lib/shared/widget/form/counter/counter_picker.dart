// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QCounterPicker extends StatefulWidget {
  final Function(int value) onChanged;
  const QCounterPicker({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<QCounterPicker> createState() => _QCounterPickerState();
}

class _QCounterPickerState extends State<QCounterPicker> {
  int counter = 0;
  increment() {
    counter++;
    setState(() {});
    widget.onChanged(counter);
  }

  decrement() {
    if (counter == 0) return;
    counter--;
    setState(() {});
    widget.onChanged(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () => decrement(),
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.remove,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 80),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: Text(
              "$counter",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Material(
          color: Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () => increment(),
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
