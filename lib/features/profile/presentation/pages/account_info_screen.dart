import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/pop_installed_custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/profile/presentation/pages/profile_update_screen.dart';
import 'package:ostad_expense_tracker_project/features/profile/presentation/widgets/account_screen_user_info.dart';

class AccountInfoScreen extends StatefulWidget {
  const AccountInfoScreen({super.key});

  static const String name = "account-info-screen";

  @override
  State<AccountInfoScreen> createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
  bool obsecureText = true;

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
              accountScreenUserInfo(),
              Padding(padding: EdgeInsets.fromLTRB(25,9,10,0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Profile information",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Inter"
                      ),),
                      GestureDetector(onTap: () {
                        context.pushNamed(ProfileUpdateScreen.name);
                      },child: Image.asset("asset/images/img_1.png",height: 62,width: 62,),)
                    ],
                  ),
                  SizedBox(height: 12,),
                  Text("Name",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    color: Color(0xff666666),
                  ),),
                  SizedBox(height: 5,),
                  Text("Enjelin Morgeana",style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                  SizedBox(height: 12,),
                  Text("Email",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    color: Color(0xff666666),
                  ),),
                  SizedBox(height: 5,),
                  Text("enjelinmorgeana@gmail.com",style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(height: 12,),
                  Text("Password",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    color: Color(0xff666666),
                  ),),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(obsecureText ? "**********" : "0000000000",style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              obsecureText = !obsecureText;
                            });
                          },
                          child: Image.asset("asset/images/img_2.png",height: 20,width: 20,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text("Number of cards",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    color: Color(0xff666666),
                  ),),
                  SizedBox(height: 5,),
                  Text("1",style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                  SizedBox(height: 12,),
                  Text("Number of Bank Accounts",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                    color: Color(0xff666666),
                  ),),
                  SizedBox(height: 5,),
                  Text("2",style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                ],
              ),)
            ],
          ))
        ],
      ),
    );;
  }
}