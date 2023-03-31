import 'package:flutter/material.dart';

import '../app/constants/app_text.dart';
import '../app/theme/app_theme.dart';

class NormalBody extends StatelessWidget {
  const NormalBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        child: Text(
          AppTexts.normalBody,
          style: AppThemes.fs25cg,
          textAlign: TextAlign.center,
        ));
  }
}
