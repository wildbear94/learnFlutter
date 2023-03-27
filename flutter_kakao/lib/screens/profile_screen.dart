import 'package:flutter/material.dart';
import 'package:flutter_kakao/componets/bottom_icon_button.dart';
import 'package:flutter_kakao/componets/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {

  final User user;

  const ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            RoundIconButton(
              icon: FontAwesomeIcons.gift,
            ),
            SizedBox(width: 15),
            RoundIconButton(
              icon: FontAwesomeIcons.cog,
            ),
            SizedBox(width: 15),
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            user.name == me.name ? _buildMyIcons() : _buildFriendIcons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcons() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomIconButton(icon: FontAwesomeIcons.comment, text: "나와의채팅"),
                SizedBox(width: 50),
                BottomIconButton(icon: FontAwesomeIcons.pen, text: "프로필 폅집"),
              ],
            ),
          );
  }

  Widget _buildFriendIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: "1:1채팅"),
          SizedBox(width: 50),
          BottomIconButton(icon: FontAwesomeIcons.pen, text: "통화하기"),
        ],
      ),
    );
  }
}
