import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String name = "Splash-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0x4f378A)
              ),
              child: Text("Expense", style: TextStyle(
                fontSize: 28,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: 'Roboto'
              ),),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
