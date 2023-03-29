import 'package:flutter/material.dart';

class JoinPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 200),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
              ),
                errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
            ),
          ],
        ),
      ),
    );
  }
}
