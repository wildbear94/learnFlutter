import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:get/get.dart';
import '../../components/custom_elebatedbutton.dart';
import '../../components/custome_text_form_filed.dart';
import '../../util/validator_util.dart';

class LoginPage extends StatelessWidget {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                "로그인 페이지",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomTextFormFiled(hint: "name", funValidator: validateUsername(),),
          CustomTextFormFiled(hint: "Password", funValidator: validatePassword(),),
          CustdomElebatedButton(
            text: "로그인",
              funPageRouts: (){
                if(_formkey.currentState!.validate()){
                  Get.to(HomePage());
                }
              }
          ),
        ],
      ),
    );
  }
}




