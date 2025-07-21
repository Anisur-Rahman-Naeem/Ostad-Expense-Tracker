import 'package:flutter/material.dart';

class LoginWithOtherAccountsWidget extends StatelessWidget {
  const LoginWithOtherAccountsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Facebook
        GestureDetector(
          onTap: () {
            // Handle Facebook login
          },
          child: Container(
            width: 100.53,
            height: 61.53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200, width: 1.5),
            ),
            child: Center(
              child: Image.asset(
                'asset/images/facebook.png',
                width: 28,
                height: 28,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),

        // Google
        GestureDetector(
          onTap: () {
            // Handle Google login
          },
          child: Container(
            width: 100.53,
            height: 61.53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200, width: 1.5),
            ),
            child: Center(
              child: Image.asset(
                'asset/images/google.png',
                width: 28,
                height: 28,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),

        // Apple
        GestureDetector(
          onTap: () {
            // Handle Apple login
          },
          child: Container(
            width: 100.53,
            height: 61.53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200, width: 1.5),
            ),
            child: Center(
              child: Image.asset(
                'asset/images/apple.png',
                width: 28,
                height: 28,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
