import 'package:flutter/material.dart';

import '../app/constants/app_text.dart';
import '../app/theme/app_colors.dart';
import '../app/theme/app_theme.dart';

class CalcBtn extends StatefulWidget {
  const CalcBtn({Key? key}) : super(key: key);

  @override
  State<CalcBtn> createState() => _CalcBtnState();
}

class _CalcBtnState extends State<CalcBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: AppColors.pinkColor,
      child: const Center(
        child: Text(
          AppTexts.calcBtn,
          style: AppThemes.fs25cwFw,
        ),
      ),
    );
  }
}
