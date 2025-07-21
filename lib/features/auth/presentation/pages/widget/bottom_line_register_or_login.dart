import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomLineRegisterOrLogin extends StatelessWidget {
  const BottomLineRegisterOrLogin({
    super.key, required this.approachText, required this.buttonText, required this.nextScreenName,
  });

  final String approachText;
  final String buttonText;
  final String nextScreenName;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: approachText,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Roboto",
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: buttonText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "Roboto",
              color: Color(0xff4f378a),
            ),
            recognizer:
            TapGestureRecognizer()
              ..onTap = () {
                context.goNamed(nextScreenName);
              },
          ),
        ],
      ),
    );
  }
}
