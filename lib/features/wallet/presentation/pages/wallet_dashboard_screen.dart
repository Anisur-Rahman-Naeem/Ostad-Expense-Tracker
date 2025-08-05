import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/pages/add_wallet_option_screen.dart';
import 'package:ostad_expense_tracker_project/features/wallet/presentation/widgets/transaction_medium_icon.dart';

class WalletDashboardScreen extends StatelessWidget {
  
  const WalletDashboardScreen({super.key});

  static const String name = "wallet-dashboard-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CurvedHeader(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBar(labelText: 'Wallet', trailingIcon: notification_bell_icon(hasUnread: true)),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Total Balance",
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Inter",
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "\$ 00.00",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inter",
                              color: Color(0xff222222),
                            ),
                          ),
                          SizedBox(height: 25),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TransactionMediumIcon(labelText: 'Add', imageIcon: Icon(Icons.add), onPressed: () {
                                  context.pushNamed(AddWalletOptionScreen.name);
                                },),
                                TransactionMediumIcon(labelText: "Pay", imageIcon: Icon(Icons.qr_code), onPressed: () {  },),
                                TransactionMediumIcon(labelText: "Send", imageIcon: Image.asset(
                                  "asset/images/img.png",
                                  height: 30,
                                  width: 30,
                                  color: Color(0xff4F378A),
                                  alignment: Alignment.center,
                                ), onPressed: () {  },),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
