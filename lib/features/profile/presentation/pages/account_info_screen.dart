import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/pop_installed_custom_app_bar.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  static const String name = "account-info-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CurvedHeader(),
          SafeArea(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PopInstalledCustomAppBar(labelText: "Profile", trailingIcon: notification_bell_icon(hasUnread: true)),
              SizedBox(height: 50,),
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
              SizedBox(height: 5),
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
          ))
        ],
      ),
    );;
  }
}
