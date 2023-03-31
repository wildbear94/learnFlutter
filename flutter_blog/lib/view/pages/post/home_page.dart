import 'package:flutter/material.dart';
import 'package:flutter_blog/view/pages/post/write_page.dart';
import 'package:get/get.dart';

import '../../../size.dart';
import '../user/login_page.dart';
import '../user/user_info.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _naviagtion(context),
      appBar: AppBar(),
      body: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(DetailPage(index), arguments: "데이터");
              },
              title: Text("제목1"),
              leading: Text("1"),
            );
          },
        separatorBuilder: (BuildContext context, int index) {
            return Divider();
        },
        ),
      );
    }

  Widget _naviagtion(BuildContext context) {
    return Container(
      width:getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){
                  Get.to(WritePage());
                },
                child: Text(
                  "글쓰기",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              Divider(),
              TextButton(
                onPressed: (){
                  Get.to(UserInfo());
                },
                child: Text(
                  "회원정보 보기",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              Divider(),
              TextButton(
                onPressed: (){
                  Get.to(LoginPage());
                },
                child: Text(
                  "로그아웃",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
