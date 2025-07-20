import 'package:flutter/material.dart';

class SignatureAppBar extends StatelessWidget {
  const SignatureAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xff4f378A)
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Expense", style: TextStyle(
              fontSize: 28,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: 'Roboto',

            ),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text("Tracker", style: TextStyle(
            fontSize: 28,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: 'Roboto',

          ),),
        ),
      ],
    );
  }
}
