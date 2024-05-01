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
            const SizedBox(
              height: 44,
            ),
            // Top
            Container(
              padding: const EdgeInsets.fromLTRB(10, 6, 15, 0),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/Instagram_logo.png"),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Add.png",
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/Heart.png",
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        "assets/Share.png",
                        width: 28,
                        height: 28,
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Body
            Expanded(
              child: Column(),
            ),
            // Bottom
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/Home.png"),
                  Image.asset("assets/Search.png"),
                  Image.asset("assets/Reels.png"),
                  Image.asset("assets/Shop.png"),
                  Image.asset("assets/Profile_picture_01.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
