import 'package:flutter/material.dart';

import '../app/constants/app_text.dart';
import '../app/theme/app_theme.dart';

class NormalBmiRangeAndValue extends StatelessWidget {
  const NormalBmiRangeAndValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        Text(AppTexts.normalBmiRangeValue, style: AppThemes.fs25cw),
        Text(AppTexts.kv, style: AppThemes.fs15cw),
      ],
    );
  }
}
