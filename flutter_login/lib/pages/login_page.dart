import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';
import '../componets/CustomForm.dart';
import '../componets/custom_text_form_field.dart';
import '../componets/logo.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            SizedBox(height: large_gap),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}



