import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

import '../size.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomTextFormFiled(
            text: "email",
            mValide: (value) {
              print("value : $value");
              if(value!.isEmpty){
                return "Please enter some text";
              } else if(!isEmail(value)){
                return "이메일 형식이 아닙니다.";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: medium_gap),
          CustomTextFormFiled(
            text: "Password",
            mValide: (value) {
              print("value : $value");
              if(value!.isEmpty){
                return "Please enter some text";
              } else if(value.toString().length > 20){
                return "패스워드 길이가 초과 되었습니다.";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if(_formkey.currentState!.validate()){
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
