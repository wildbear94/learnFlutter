import 'package:flutter/material.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/view/pages/post/update_page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {

  final int id;

  const DetailPage(this.id);

  @override
  Widget build(BuildContext context) {

    //String data = Get.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("글제목 : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            Divider(),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    Get.off(HomePage());
                  },
                  child: Text("삭제"),
                ),
                ElevatedButton(
                  onPressed: (){
                    Get.to(UpdatePage());
                  },
                  child: Text("수정"),
                ),
              ],
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Text("글내용" * 500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
