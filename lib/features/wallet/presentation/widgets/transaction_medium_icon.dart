import 'package:flutter/material.dart';

class TransactionMediumIcon extends StatelessWidget {
  const TransactionMediumIcon({super.key, required this.labelText, required this.imageIcon, required this.onPressed});

  final String labelText;
  final Widget imageIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(width: 1.0, color: Color(0xff4F378A)),
          ),
          child: Center(
            child: IconButton(icon: imageIcon,iconSize: 30, color: Color(0xff4F378A), onPressed: onPressed,),
          ),
        ),
        SizedBox(height: 5,),
        Text(
          labelText,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Inter",
            color: Color(0xff222222),
          ),
        ),
      ],
    );
  }
}