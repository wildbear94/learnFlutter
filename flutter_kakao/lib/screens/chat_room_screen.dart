import 'package:flutter/material.dart';
import 'package:flutter_kakao/componets/my_chat.dart';
import 'package:flutter_kakao/componets/other_chat.dart';
import 'package:flutter_kakao/componets/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatRoomScreen extends StatefulWidget {


  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFB2c7da),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _buildAppBar(context),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TimeLine(time: "2021년 1월 1일 금요일"),
                        OtherChat(
                            name: "홍길동",
                            text: "새해 복 많이 받으세요!",
                            time: "오전 10:10",
                        ),
                        MyChat(
                          text: "선생님도 많이 받으세요!",
                          time: "오전 10:20",
                        ),                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
            backgroundColor: Colors.transparent,
            title: Text("홍길동", style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              Icon(FontAwesomeIcons.search, size: 20),
              SizedBox(width: 25),
              Icon(FontAwesomeIcons.bars, size: 20),
              SizedBox(width: 25),
            ],
          );
  }
}