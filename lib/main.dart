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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 50,
                color: Colors.red,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 150,
                height: 50,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
