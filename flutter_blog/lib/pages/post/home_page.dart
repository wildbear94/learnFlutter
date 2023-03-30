import 'package:flutter/material.dart';

import '../../size.dart';

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
              onTap: () {},
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
                onPressed: (){},
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
                onPressed: (){},
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
