import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Image.asset(
              'assets/bg.png',
              height: 250.r,
              width: 250.r,
              color: tabColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 20.h,
            ),
            Expanded(child: SizedBox()),
            MaterialButton(
              // height: 50.h,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              onPressed: () {},
              color: tabColor,
              child: Text(
                'Agree and continue',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    ));
  }
}
