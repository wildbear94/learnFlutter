import 'package:flutter/material.dart';
import 'package:flutter_blog/view/pages/user/login_page.dart';
import 'package:get/get.dart';
import '../../../util/validator_util.dart';
import '../../components/custom_elebatedbutton.dart';
import '../../components/custome_text_form_filed.dart';


class JoinPage extends StatelessWidget {

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
                "회원가입 페이지",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _joinForm(),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          CustomTextFormFiled(
            hint: "name",
            funValidator: validateUsername(),
          ),
          CustomTextFormFiled(
            hint: "Password",
            funValidator: validatePassword(),
          ),
          CustomTextFormFiled(
            hint: "email",
            funValidator: validateEmail(),
          ),
          CustdomElebatedButton(
              text: "회원가입",
              funPageRouts: (){
                if(_formkey.currentState!.validate()){
                  Get.to(LoginPage());
                }
              },
          ),
          TextButton(
              onPressed: (){
                Get.to(LoginPage());
              },
              child: Text("로그인")
          ),
        ],
      ),
    );
  }
}




