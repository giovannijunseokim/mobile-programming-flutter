import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Status Bar
            const SizedBox(),
            // Top
            Container(),
            // Body
            Expanded(
              child: Column(),
            ),
            // Bottom
            Container()
          ],
        ),
      ),
    );
  }
}
