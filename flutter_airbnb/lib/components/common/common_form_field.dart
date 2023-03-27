
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {

  final prefixText;
  final hintText;

  const CommonFormField({required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        ),
      ],
    );
  }
}
