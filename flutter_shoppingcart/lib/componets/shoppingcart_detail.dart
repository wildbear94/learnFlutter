
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/contants.dart';

class ShoppingCartDetail extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      height: 300,
      child: Column(
        children: [
          _buildDetailNameAndPrice(),
          _buildDetailRatingAndReviewCount(),
          _buildDetailColorOptions(),
          _buildDetailButton(context),
        ],
      )
    );
  }

  Widget _buildDetailNameAndPrice(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Sort AL 10.0",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          Text("\$699", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(Icons.start, color: Colors.yellow),
          Icon(Icons.start, color: Colors.yellow),
          Icon(Icons.start, color: Colors.yellow),
          Icon(Icons.start, color: Colors.yellow),
          Icon(Icons.start, color: Colors.yellow),
          Spacer(),
          Text("review"),
          Text(
            "(26)",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Buttons"),
          SizedBox(height: 10),
          Row(
            children: [
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: mColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context){
    return TextButton(
        onPressed: (){
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
                title: Text("장바구니에 담으시겠습니까?"),
                actions: [
                  CupertinoDialogAction(
                    child: Text("확인"),
                    onPressed: () {
                      print("장바구니 담김");
                      Navigator.pop(context);
                    },
                  ),
                ],
            ),
          );
        },
        child: Text("Add To Cart", style: TextStyle(color: Colors.white)),
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          minimumSize: Size(300, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
    );
  }
}
