import 'package:flutter/material.dart';

import 'componets/shoppingcart_detail.dart';
import 'componets/shoppingcart_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          Expanded(child: ShoppingCartDetail())
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() => AppBar(
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        print("클릭됨");
      },
    ),
    actions: [
      IconButton(onPressed: (){
        print("클릭툄");
      },
          icon: Icon(Icons.shopping_cart),
      ),
      SizedBox(
        width: 16.0,
      ),
    ],
  );

}




