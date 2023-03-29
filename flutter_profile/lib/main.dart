import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _blulidProfileAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled){
          return [
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 20),
                ProfileHeader(),
                SizedBox(height: 20),
                ProfilecountInfo(),
                SizedBox(height: 20),
                ProfileButtons(),
            ]),
            ),
          ];
        },
        body: ProfileTab(),
       ),
      );
  }

  AppBar _blulidProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("프로필"),
      centerTitle: true,
    );
  }
}




