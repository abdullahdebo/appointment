import 'package:appointment/core/theming/colors.dart';
import 'package:appointment/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Abdullah!',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How are you today?',
              style: TextStyles.font12GreyReguler,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLigterGray,
          child: SvgPicture.asset(
            'assets/svgs/notification.svg',
          ),
        ),
      ],
    );
  }
}
