import 'package:flutter/material.dart';

class BlurryTextBeneathDebitCard extends StatelessWidget {
  const BlurryTextBeneathDebitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 15, 10),
      child: Text(
        "This card must be connected to a bank account under your name",
        style: TextStyle(
          fontSize: 13,
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          color: Color(0xff666666),
        ),
      ),
    );
  }
}
