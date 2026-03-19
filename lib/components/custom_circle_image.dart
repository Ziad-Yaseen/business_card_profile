import 'package:flutter/material.dart';

class CustomCircleImage extends StatelessWidget {
  final String asset;

  const CustomCircleImage({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 69,
      backgroundColor: Color(0xFFf5d6c8),
      child: CircleAvatar(
        backgroundColor: Color(0xFFec5b13),
        radius: 65,
        child: CircleAvatar(radius: 62, backgroundImage: AssetImage(asset)),
      ),
    );
  }
}
