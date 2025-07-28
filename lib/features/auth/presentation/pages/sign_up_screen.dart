import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/Login_With_Other_Accounts_Widget.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/bottom_line_register_or_login.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/confirm_password_text_field.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/custom_text_field.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/email_text_field.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/password_text_field.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/signature_appbar.dart';
import 'package:ostad_expense_tracker_project/features/home/presentation/pages/homepage_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = "Sign-up";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _customTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 92, 20, 0),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SignatureAppBar()],
                ),
                SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nice to meet you",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Before we begin, we need some details.",
                      style: TextStyle(
                        fontSize: 16.29,
                        fontFamily: "Inter",
                        color: Color(0xff564E60),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38),
                custom_text_field(customTEController: _customTEController),
                SizedBox(height: 10),
                email_text_field(emailTEController: _emailTEController),
                SizedBox(height: 10),
                PasswordTextField(passwordTEController: _passwordTEController),
                SizedBox(height: 10),
                ConfirmPasswordTextField(confirmPasswordTEController: _confirmPasswordTEController),

                SizedBox(height: 18),
                SizedBox(
                  width: 364,
                  child: ElevatedButton(
                    onPressed: () {
                      context.goNamed(HomepageScreen.name);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff65558F),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Or Register with", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 13),
                LoginWithOtherAccountsWidget(),
                SizedBox(height: 30),
                BottomLineRegisterOrLogin(approachText: 'Already have an account?  ', buttonText: 'Login', nextScreenName: SignInScreen.name,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}