import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class QRatingField extends StatefulWidget {
  final String label;
  final double? value;
  final bool enabled;
  final String? Function(double?)? validator;
  final Function(double value)? onChanged;
  final String? hint;
  final String? helperText;

  const QRatingField({
    Key? key,
    required this.label,
    this.value,
    this.onChanged,
    this.validator,
    this.enabled = false,
    this.hint,
    this.helperText,
  }) : super(key: key);

  @override
  State<QRatingField> createState() => _QRatingFieldState();
}

class _QRatingFieldState extends State<QRatingField> {
  double? currentValue;

  @override
  void initState() {
    currentValue = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12.0,
      ),
      child: Stack(
        children: [
          TextFormField(
            initialValue: " ",
            enabled: widget.enabled,
            validator: (value) {
              if (widget.validator != null) {
                widget.validator!(currentValue);
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: widget.label,
              helperText: widget.helperText,
              hintText: widget.hint,
            ),
            // onChanged: (value) {

            //   widget.onChanged!(value);
            // },
            // onFieldSubmitted: (value) {
            //   if (widget.onSubmitted != null) widget.onSubmitted!(value);
            // },
          ),
          Positioned(
            left: Theme.of(context)
                    .inputDecorationTheme
                    .contentPadding
                    ?.horizontal ??
                12.0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  initialRating: widget.value ?? 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemSize: 20.0,
                  onRatingUpdate: (rating) {
                    print(rating);
                    if (widget.onChanged != null) {
                      widget.onChanged!(rating);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
