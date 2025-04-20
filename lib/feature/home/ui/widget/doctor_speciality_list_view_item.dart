import 'package:appointment/core/theming/colors.dart';
import 'package:appointment/core/theming/style.dart';
import 'package:appointment/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorSpecialityListViewItem(
      {super.key,
      this.specializationsData,
      required this.itemIndex,
      SpecializationsData? specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: TextStyles.font12DarkBlueReguler,
          ),
        ],
      ),
    );
  }
}
