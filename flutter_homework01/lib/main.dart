import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                    "PC",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "NoteBook",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "KeyBoard",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "mouse",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/pc.jpg", fit: BoxFit.cover,)),
            SizedBox(height: 2),
            Expanded(child: Image.asset("assets/notebook.jpg", fit: BoxFit.cover,)),
          ],
        ),
      ),
    );
  }
}




