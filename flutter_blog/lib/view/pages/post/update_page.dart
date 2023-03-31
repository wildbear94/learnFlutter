import 'package:flutter/material.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';

import '../../components/custom_elebatedbutton.dart';
import '../../components/custom_text_Area.dart';
import '../../components/custome_text_form_filed.dart';

class UpdatePage extends StatelessWidget {

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
                value: "제목1" * 2,
              ),
              CustomTextArea(
                hint: "Content",
                funValidator: validateContent(),
                value: "내용1" * 30,
              ),
              CustdomElebatedButton(
                  text: "글수정",
                  funPageRouts: (){
                    if(_formkey.currentState!.validate()){
                      //Get.off(DetailPage(1));
                      Get.back();
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
