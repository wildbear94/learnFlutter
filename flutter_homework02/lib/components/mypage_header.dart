import 'package:flutter/material.dart';

class MypageHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        _buildHeaderAvatar(),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("박상영", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            Text("반갑습니다. 함께 TODO 해요.", style: TextStyle(fontSize: 15),),
          ],
        ),
        SizedBox(width: 30),
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 45,
          child: Text(
            "프로필 수정",
            style: TextStyle(color: Colors.black),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
          ),
        ),
      ],
    );
  }

  SizedBox _buildHeaderAvatar() {
    return SizedBox(
        width: 50,
        height: 50,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/batman_icon.png"),
        ),
      );
  }
}
