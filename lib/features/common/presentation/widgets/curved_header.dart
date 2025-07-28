import 'package:flutter/material.dart';

class CurvedHeader extends StatelessWidget {
  const CurvedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomCurveClipper(),
      child: Container(
        height: 250, // Adjust height as needed
        width: double.infinity,
        color: Color(0xFF6A4BBC), // Use your desired purple
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 40); // Start from bottom left with curve height

    // Create arc at bottom
    path.quadraticBezierTo(
      size.width / 2, size.height, // control point
      size.width, size.height - 40, // end point
    );

    path.lineTo(size.width, 0); // Top right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}