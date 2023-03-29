import 'package:flutter/material.dart';

class MypageCountInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text("팔로잉", style: TextStyle(fontSize: 20),),
            SizedBox(height: 2),
            Text("150", style: TextStyle(fontSize: 20),),
          ],

        ),
        Container(
          width: 2,
          height: 60,
          color: Colors.blue,
        ),
        Column(
          children: [
            Text("팔로워", style: TextStyle(fontSize: 20),),
            SizedBox(height: 2),
            Text("999", style: TextStyle(fontSize: 20),),
          ],
        ),
      ],
    );
  }
}
