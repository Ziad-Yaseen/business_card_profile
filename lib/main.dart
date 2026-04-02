import 'package:business_card/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  static String myName = 'Ziad Yaseen';
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 960),
      builder: (context, child) =>
          MaterialApp(debugShowCheckedModeBanner: false, home: child),
      child: const Home(),
    );
  }
}
