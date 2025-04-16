import 'package:appointment/core/theming/style.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyles.font12DarkBlueReguler,
        ),
      ],
    );
  }
}
