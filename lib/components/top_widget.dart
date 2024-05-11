import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 6, 15, 0),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/Instagram_logo.png"),
          Row(
            children: [
              Image.asset(
                "assets/Add.png",
                width: 28,
                height: 28,
              ),
              const SizedBox(width: 18),
              Image.asset(
                "assets/Heart.png",
                width: 28,
                height: 28,
              ),
              const SizedBox(width: 18),
              Image.asset(
                "assets/Share.png",
                width: 28,
                height: 28,
              ),
            ],
          )
        ],
      ),
    );
  }
}
