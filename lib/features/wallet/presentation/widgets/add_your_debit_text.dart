import 'package:flutter/material.dart';

class AddYourDebitText extends StatelessWidget {
  const AddYourDebitText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Add your debit Card",
      style: TextStyle(
        fontSize: 16,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
