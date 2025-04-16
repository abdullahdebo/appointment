import 'package:appointment/core/theming/style.dart';
import 'package:appointment/feature/login/widgets/doc_logo_andname.dart';
import 'package:appointment/feature/login/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login/widgets/get_started_button.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                const DocLogoAndname(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13GreyReguler,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
