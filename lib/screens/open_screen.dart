// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/screens/login_screen.dart';

class Openscreen extends StatelessWidget {
  const Openscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Theme.of(context).primaryColor,
                width: ScreenUtil().setWidth(110),
                height: ScreenUtil().setHeight(110),
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 80.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    // minimumSize: Size(.5.sw, .05.sh),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Start",
                    style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
