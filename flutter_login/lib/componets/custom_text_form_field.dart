
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("email"),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Email",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ],
    );
  }
}
