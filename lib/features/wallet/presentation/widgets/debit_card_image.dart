import 'package:flutter/material.dart';

class DebitCardImage extends StatelessWidget {
  const DebitCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Image.asset(
        "asset/images/sample debit card.png",
        width: 324,
        height: 209,
      ),
    );
  }
}
