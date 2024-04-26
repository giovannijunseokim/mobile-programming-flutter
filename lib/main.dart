import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter"),
        backgroundColor: Colors.amber,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 50,
            height: 200,
            color: Colors.green,
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
        ],
      ),
    ));
  }
}
