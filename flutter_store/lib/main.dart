import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text(
                    "Woman",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("Shops", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/bag.jpeg",
              fit: BoxFit.cover,),
            ),
            SizedBox(
              height: 2,
            ),
            Expanded(flex: 1, child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover,))
          ],
        ),
      ),
    );
  }
}
