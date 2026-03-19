import 'package:flutter/material.dart';

class CustomCircleIcon extends StatelessWidget {
  final IconData icon;
  const CustomCircleIcon({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xFFf8f6f6),
      radius: 20,
      child: CircleAvatar(
        backgroundColor: Color(0xFFec5b13),
        radius: 15,
        child: Icon(icon, color: Color(0xFFffffff), size: 17),
      ),
    );
  }
}
