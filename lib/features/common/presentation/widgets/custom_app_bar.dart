import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key, required this.labelText, required this.trailingIcon,
  });

  final String labelText;
  final Widget trailingIcon;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final shell = StatefulNavigationShell.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 20, 10, 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              shell.goBranch(0);
            }
          ),
          Text(
            widget.labelText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Inter",
              color: Colors.white,
            ),
          ),
          widget.trailingIcon,
        ],
      ),
    );
  }
}