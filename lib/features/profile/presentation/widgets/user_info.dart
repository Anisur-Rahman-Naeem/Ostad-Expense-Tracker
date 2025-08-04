import 'package:flutter/material.dart';

class userInfo extends StatelessWidget {
  const userInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 80,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
            "Enjelin Morgeana",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              color: Color(0xff222222),
            ),
          ),
        ),
        SizedBox(height: 2),
        Center(
          child: Text(
            "@enjelin_morgeana",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              color: Color(0xff4F378A),
            ),
          ),
        ),
      ],
    );
  }
}