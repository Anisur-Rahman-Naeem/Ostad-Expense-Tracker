import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/home/presentation/widgets/transaction_widget.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  static const String name = "home-page";

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final bool hasUnread = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CurvedHeader(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good afternoon,",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Enjelin Morgeana",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Inter",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      notification_bell_icon(hasUnread: hasUnread),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5.0,
                      color: Color(0xFF65558F),
                      child: Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            total_balance_and_header(),
                            Text(
                              "\$ 2,548.00",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [income_details(), expense_details()],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(17.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transactions History",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Inter",
                                color: Colors.black,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Transaction_widget(amount: '+ \$ 850.00', date: 'Today', imagePath: 'asset/images/upwork_logo_icon.png', transactionName: 'Upwork',),
                        SizedBox(height: 5,),
                        Transaction_widget(amount: '- \$ 85.00', date: 'Yesterday', imagePath: 'asset/images/people.jpg', transactionName: 'Transfer',),
                        SizedBox(height: 5,),
                        Transaction_widget(amount: '+ \$ 1,406.00', date: 'Jan 30, 2022', imagePath: 'asset/images/paypal-logo-icon.jpg', transactionName: 'Paypal',),
                        SizedBox(height: 5,),
                        Transaction_widget(amount: '- \$ 11.00', date: 'Jan 16, 2022', imagePath: 'asset/images/Youtube_logo.png', transactionName: 'Youtube',),
                        SizedBox(height: 5,),
                        Transaction_widget(amount: '- \$ 90.99', date: 'Yesterday', imagePath: 'asset/images/people.jpg', transactionName: 'Transfer',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column expense_details() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Color(0xFF574878),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.arrow_upward, size: 15, color: Colors.white),
              ),
            ),
            SizedBox(width: 5),
            Text(
              "Expenses",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Text(
            "\$ 284.00",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Column income_details() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Color(0xFF574878),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_downward,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 5),
            Text(
              "Income",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(1.5, 0, 0, 0),
          child: Text(
            "\$ 1,840.00",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }


  Color getTransactionColor(String value) {
    if (value.startsWith('+')){
      return Colors.green;
    } else if (value.startsWith('-')){
      return Colors.red;
    }
    return Colors.black;
  }
  Row total_balance_and_header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Total Balance ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter",
                color: Colors.white,
              ),
            ),
            SizedBox(),
            Icon(Icons.keyboard_arrow_up, color: Colors.white),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz, color: Colors.white),
        ),
      ],
    );
  }
}