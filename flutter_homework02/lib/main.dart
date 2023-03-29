import 'package:flutter/material.dart';
import 'package:flutter_homework02/components/mypage_count_info.dart';
import 'package:flutter_homework02/components/mypage_drawer.dart';
import 'package:flutter_homework02/components/mypage_header.dart';
import 'package:flutter_homework02/components/mypage_tab.dart';
import 'package:flutter_homework02/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //endDrawer: MypageDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("마이페이지", style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: Colors.white),),
          IconButton(onPressed: (){}, icon: Icon(Icons.alarm, color: Colors.white),),

        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          MypageHeader(),
          SizedBox(height: 20),
          MypageCountInfo(),
          //MypageTab(),
        ],
      ),
    );
  }
}

