import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/Home.png"),
          Image.asset("assets/Search.png"),
          Image.asset("assets/Reels.png"),
          Image.asset("assets/Shop.png"),
          Image.asset("assets/Profile_picture_01.png"),
        ],
      ),
    );
  }
}
