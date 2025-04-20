import 'package:appointment/core/helper/spacing.dart';
import 'package:appointment/feature/home/ui/widget/doctors_speciality_see_all.dart';
import 'package:appointment/feature/home/ui/widget/doctorsb_blue_container.dart';
import 'package:appointment/feature/home/ui/widget/home_top_bar.dart';
import 'package:appointment/feature/home/ui/widget/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20,
            16,
            20,
            28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              DoctorsbBlueContainer(),
              verticalSpace(24.h),
              DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
