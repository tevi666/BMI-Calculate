import 'package:flutter/material.dart';

import '../app/constants/app_text.dart';
import '../app/theme/app_theme.dart';

class NotNormalBody extends StatelessWidget {
  const NotNormalBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppTexts.notNormalBody,
      style: AppThemes.fs25cpFw,
      textAlign: TextAlign.center,
    );
  }
}
