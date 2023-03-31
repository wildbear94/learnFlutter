import 'package:flutter/material.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';

import '../../components/custom_elebatedbutton.dart';
import '../../components/custom_text_Area.dart';
import '../../components/custome_text_form_filed.dart';
import 'home_page.dart';

class WritePage extends StatelessWidget {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
            child: ListView(
              children: [
                CustomTextFormFiled(
                  hint: "Title",
                  funValidator: validateTitle(),
                ),
                CustomTextArea(
                  hint: "Content",
                  funValidator: validateContent(),
                ),
                CustdomElebatedButton(
                    text: "글쓰기",
                    funPageRouts: (){
                      if(_formkey.currentState!.validate()){
                        Get.off(HomePage());
                      }
                    }
                ),
              ],
            ),
        ),
      ),
    );
  }
}
