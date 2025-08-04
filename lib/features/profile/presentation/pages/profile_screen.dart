import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/profile/presentation/pages/account_info_screen.dart';
import 'package:ostad_expense_tracker_project/features/profile/presentation/widgets/user_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String name = "profile-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CurvedHeader(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBar(
                  labelText: "Profile",
                  trailingIcon: notification_bell_icon(hasUnread: true),
                ),
                SizedBox(height: 50),
                userInfo(),
                SizedBox(height: 25),
                Flexible(
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffF0F6F5),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Image.asset(
                                "asset/images/diamond image.png",
                                height: 25,
                                width: 25,
                                color: Colors.blue.shade400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Invite Friends",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 7.0,
                        ),
                        child: Divider(thickness: 1),
                      ),
                      ListTile(
                        title: Text(
                          "Account info",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter",
                            color: Color(0xff000000),
                          ),
                        ),
                        onTap: () {
                          context.pushNamed(AccountInfoScreen.name);
                        },
                        leading: Icon(
                          Icons.person,
                          color: Color(0xff666666),
                          size: 28,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Login and security",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter",
                            color: Color(0xff000000),
                          ),
                        ),
                        onTap: () {
                          print("clicked 2");
                        },
                        leading: Image.asset(
                          "asset/images/login and security.png",
                          color: Color(0xff666666),
                          height: 28,
                          width: 28,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Data and privacy",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter",
                            color: Color(0xff000000),
                          ),
                        ),
                        onTap: () {
                          print("clicked 1");
                        },
                        leading: Image.asset(
                          "asset/images/data and privacy.png",
                          color: Color(0xff666666),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
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
