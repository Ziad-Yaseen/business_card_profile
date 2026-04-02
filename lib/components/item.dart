import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  final Color mainColor;
  final Color accentColor;
  final String mainTxt;
  final String subTxt;
  final IconData icon;
  final bool isThereImage;
  final String imageAsset;

  const Item({
    required this.mainTxt,
    required this.subTxt,
    required this.icon,
    required this.mainColor,
    required this.accentColor,
    this.isThereImage = false,
    this.imageAsset = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 24.w, right: 24.w),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                // width: 40,
                // height: 40,
                decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(15),
                child: Icon(icon, color: mainColor, size: 23),
              ),
              SizedBox(width: 16.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainTxt,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black.withValues(alpha: 0.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subTxt,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded, color: mainColor, size: 15),
            ],
          ),
          if (isThereImage)
            Column(
              children: [
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Image.asset(imageAsset),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
