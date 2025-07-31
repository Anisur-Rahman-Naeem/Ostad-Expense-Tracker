import 'package:flutter/material.dart';

class WalletDashboardScreen extends StatelessWidget {
  const WalletDashboardScreen({super.key});

  static const String name = "wallet-dashboard-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Wallet Dashboard"),
      ),
    );
  }
}
