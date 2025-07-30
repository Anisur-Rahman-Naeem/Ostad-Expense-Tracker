import 'package:flutter/material.dart';

class Transaction_widget extends StatelessWidget {
  const Transaction_widget({
    super.key, required this.amount, required this.date, required this.imagePath, required this.transactionName,
  });

  final String amount;
  final String date;
  final String imagePath;
  final String transactionName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF0F6F5)
              ),
              width: 50,
              height: 50,
              child: Center(
                child: Image.asset(imagePath,width: 34,height: 30,),
              ),
            ),
            SizedBox(width: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transactionName,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Inter",
                    color: Colors.black
                ),),
                Text(date,style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    color: Color(0xFF666666)
                ),)
              ],
            )
          ],
        ),

        Text(amount,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter",
          color: amount.startsWith('+') ? Colors.green: amount.startsWith("-") ? Colors.red : Colors.black,
        ),)
      ],
    );
  }
}
