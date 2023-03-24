import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _blulidMenuItem(Icons.food_bank, "ALL"),
            SizedBox(width: 10),
            _blulidMenuItem(Icons.emoji_food_beverage, "Coffee"),
            SizedBox(width: 10),
            _blulidMenuItem(Icons.fastfood, "Burger"),
            SizedBox(width: 10),
            _blulidMenuItem(Icons.local_pizza, "Pizzq"),
          ],
        ),
      ),
    );
  }

  Container _blulidMenuItem(IconData mIcon, String text) {
    return Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                mIcon,
                color: Colors.redAccent,
                size: 30,
              ),
              SizedBox(height: 5),
              Text(text),
            ],
          ),
        );
  }
}
