import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:get/get.dart';


class CustdomElebatedButton extends StatelessWidget {

  final String text;
  final funPageRouts;

  const CustdomElebatedButton({required this.text, required this.funPageRouts});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: funPageRouts,
      child: Text("$text"),
    );
  }
}