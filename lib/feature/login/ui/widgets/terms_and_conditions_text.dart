import 'package:appointment/core/theming/style.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'By Logging in, you agree to our ',
          style: TextStyles.font13GreyReguler,
        ),
        TextSpan(
          text: 'Terms & Conditions ',
          style: TextStyles.font13DarkBlueMedium,
        ),
        TextSpan(
          text: 'and',
          style: TextStyles.font13GreyReguler.copyWith(height: 1.7),
        ),
        TextSpan(
          text: ' Privacy Policy',
          style: TextStyles.font13DarkBlueMedium,
        ),
      ]),
    );
  }
}
