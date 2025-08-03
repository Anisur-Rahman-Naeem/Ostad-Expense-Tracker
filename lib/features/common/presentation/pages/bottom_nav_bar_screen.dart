import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ostad_expense_tracker_project/features/expense/presentation/pages/add_expense_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key, required this.shell});

  static const String name = "bottom-nav-bar-screen";

  final StatefulNavigationShell shell;

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentBranchIndex = widget.shell.currentIndex;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_selectedIndex != currentBranchIndex) {
        setState(() {
          _selectedIndex = currentBranchIndex;
        });
      }
    });
    return Scaffold(
      body: widget.shell,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: currentBranchIndex == 0 ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 0);
                widget.shell.goBranch(0);
              },
              icon: Icon(
                Icons.home_rounded,
                size: 35,
                color: _selectedIndex == 0 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 1);
                widget.shell.goBranch(1);
              },
              icon: Icon(
                Icons.signal_cellular_alt_sharp,
                size: 35,
                color: _selectedIndex == 1 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            SizedBox(width: 40),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 2);
                widget.shell.goBranch(2);
              },
              icon: Image.asset(
                "asset/images/bottom_nav_icons/img_2.png",
                width: 29,
                height: 29,
                fit: BoxFit.contain,
                color: _selectedIndex == 2 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 3);
                widget.shell.goBranch(3);
              },
              icon: Icon(
                Icons.person,
                size: 35,
                color: _selectedIndex == 3 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
          ],
        ) : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 0);
                widget.shell.goBranch(0);
              },
              icon: Icon(
                Icons.home_rounded,
                size: 35,
                color: _selectedIndex == 0 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 1);
                widget.shell.goBranch(1);
              },
              icon: Icon(
                Icons.signal_cellular_alt_sharp,
                size: 35,
                color: _selectedIndex == 1 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            // SizedBox(width: 40),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 2);
                widget.shell.goBranch(2);
              },
              icon: Image.asset(
                "asset/images/bottom_nav_icons/img_2.png",
                width: 29,
                height: 29,
                fit: BoxFit.contain,
                color: _selectedIndex == 2 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() => _selectedIndex = 3);
                widget.shell.goBranch(3);
              },
              icon: Icon(
                Icons.person,
                size: 35,
                color: _selectedIndex == 3 ? Color(0xff65558F) : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: currentBranchIndex == 0 ? FloatingActionButton(
        onPressed: () {
          context.pushNamed(AddExpenseScreen.name);
        },
        backgroundColor: Color(0xff65558F),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 30),
      ): null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
