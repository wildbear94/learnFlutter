
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _bluldHeaderAvatar(),
        SizedBox(width: 20),
        _bluldHeaderProfile(),
      ],
    );
  } 

  Widget _bluldHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/batman_icon.png"),
      ),
    );
  }

  Widget _bluldHeaderProfile() {
    return Column(
      children: [
        Text(
          "P30",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text("프로그래머"),
        Text("App 프로그래밍"),
      ],
    );
  }
}
