import 'package:business_card/components/custom_row.dart';
import 'package:business_card/components/item.dart';
import 'package:business_card/components/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [Icon(Icons.more_vert_rounded), SizedBox(width: 20)],
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        backgroundColor: Color(0xFFf8f6f6),
      ),
      backgroundColor: Color(0xFFf8f6f6),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24.h),
              MyProfile(image: 'assets/images/prof.png'),
              SizedBox(height: 16.h),
              Text(
                'Ziad Yaseen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Flutter developer',
                style: TextStyle(
                  color: Color(0xFFEC5B13),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFF64748b),
                    size: 17,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    'Luxor, Egypt',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF64748b),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              CustomRow(),
              SizedBox(height: 23.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contacts information',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Item(
                mainTxt: 'Phone number',
                subTxt: '+201080173273',
                icon: Icons.call_rounded,
                mainColor: Color(0xFFec5b13),
                accentColor: Color(0xFFfdeee7),
              ),
              Item(
                mainTxt: 'Email address',
                subTxt: 'ziadyaseenn@gmail.com',
                icon: Icons.email_rounded,
                mainColor: Color(0xFFbd8dce),
                accentColor: Color(0xFFf8f3fa),
              ),
              Item(
                mainTxt: 'Office location',
                subTxt: 'Luxor / Egypt',
                icon: Icons.location_on_rounded,
                mainColor: Color(0xFFec5b13),
                accentColor: Color(0xFFffedd5),
                isThereImage: true,
                imageAsset: 'assets/images/Background.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
