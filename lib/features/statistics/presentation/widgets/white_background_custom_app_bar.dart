import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WhiteBackgroundCustomAppBar extends StatefulWidget {
  const WhiteBackgroundCustomAppBar({
    super.key, required this.labelText, required this.trailingIcon,
  });

  final String labelText;
  final Widget trailingIcon;

  @override
  State<WhiteBackgroundCustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<WhiteBackgroundCustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final shell = StatefulNavigationShell.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 30, 25, 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black,
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
              color: Colors.black,
            ),
          ),
          widget.trailingIcon,
        ],
      ),
    );
  }
}