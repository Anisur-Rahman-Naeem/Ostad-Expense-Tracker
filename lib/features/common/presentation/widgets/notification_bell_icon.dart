import 'package:flutter/material.dart';

class notification_bell_icon extends StatelessWidget {
  const notification_bell_icon({
    super.key,
    required this.hasUnread,
  });

  final bool hasUnread;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Container(
            width: 48,
            height: 48,
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: const Color(0xff65558F),
              // denser color (you can tweak)
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                // Handle notification tap
              },
              icon: const Icon(
                Icons.notifications_none_sharp,
                size: 30,
                color: Colors.white,
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
        if (hasUnread)
          Positioned(
            right: 15, // adjust position as needed
            top: 16,
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.amber, // yellow dot
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
