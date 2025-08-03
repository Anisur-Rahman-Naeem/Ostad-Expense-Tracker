import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/notification_bell_icon.dart';

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
          SafeArea(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(labelText: "Profile", trailingIcon: notification_bell_icon(hasUnread: true)),
              SizedBox(height: 50,),
              Center(
                child: SizedBox(
                  child: Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                            child: Icon(Icons.person,color: Colors.black,size: 80,)),
                      ),
                    ),
                  ),
                )
              )
            ],
          ))
        ],
      ),
    );
  }
}
