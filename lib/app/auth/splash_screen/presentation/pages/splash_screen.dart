import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/signature_appbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = "Splash-screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      context.goNamed(SignInScreen.name);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SignatureAppBar(),
      ),
      backgroundColor: Colors.white,
    );
  }
}