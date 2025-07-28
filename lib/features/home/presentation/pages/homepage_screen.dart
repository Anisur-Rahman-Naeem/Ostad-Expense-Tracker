import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/curved_header.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  static const String name = "home-page";

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CurvedHeader(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 0);
              },
              icon: Icon(
                Icons.home_rounded,
                size: 30,
                color: _selectedIndex == 0 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 1);
              },
              icon: Icon(
                Icons.signal_cellular_alt_sharp,
                size: 30,
                color: _selectedIndex == 1 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            SizedBox(width: 40),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 3);
              },
              icon: Image.asset(
                "asset/images/bottom_nav_icons/img_2.png",
                width: 26,
                height: 26,
                fit: BoxFit.contain,
                color: _selectedIndex == 3 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 4);
              },
              icon: Icon(
                Icons.person,
                size: 30,
                color: _selectedIndex == 4 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff65558F),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

