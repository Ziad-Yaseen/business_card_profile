import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                '42',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Projects',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF64748b),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 0.3,
            color: Colors.grey,
          ),
          Column(
            children: [
              Text(
                '1.2K',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Followers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF64748b),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 0.3,
            color: Colors.grey,
          ),
          Column(
            children: [
              Text(
                '98',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Reviews',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF64748b),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
