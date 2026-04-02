import 'package:business_card/components/custom_circle_icon.dart';
import 'package:business_card/components/custom_circle_image.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key, this.image = 'assets/images/prof.png'});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCircleImage(asset: image),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: Color(0xFFf8f6f6),
            radius: 20,
            child: CustomCircleIcon(icon: Icons.edit_rounded),
          ),
        ),
      ],
    );
  }
}
