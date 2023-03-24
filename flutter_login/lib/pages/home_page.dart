
import 'package:flutter/material.dart';

import '../componets/logo.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo("Care Soft")
        ],
      ),
    );
  }
}
