
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _bulidFollawButton(),
        _bulidMessageButton(),
      ],
    );
  }

  Widget _bulidFollawButton(){
    return InkWell(
      onTap: (){
        print("Follow 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text("Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _bulidMessageButton(){
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      child: Text("Message",
        style: TextStyle(color: Colors.black),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
    );
  }

}
