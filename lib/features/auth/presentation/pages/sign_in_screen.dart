import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/Login_With_Other_Accounts_Widget.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/bottom_line_register_or_login.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/email_text_field.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/widget/password_text_field.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/signature_appbar.dart';
import 'package:ostad_expense_tracker_project/features/home/presentation/pages/homepage_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = "Sign-in";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 92, 24, 0),
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
                      "Welcome back! Glad",
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
                      "to see you, Again!",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38),
                email_text_field(emailTEController: _emailTEController),
                SizedBox(height: 10),
                PasswordTextField(passwordTEController: _passwordTEController),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 28),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6a707c),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42),
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
                        "Login",
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
                    Text("Or Login with", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 13),
                LoginWithOtherAccountsWidget(),
                SizedBox(height: 40),
                BottomLineRegisterOrLogin(approachText: 'Don’t have an account? ', buttonText: 'Register', nextScreenName: SignUpScreen.name,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}