import 'package:calculate/presentation/app/constants/app_text.dart';
import 'package:calculate/presentation/app/constants/sized_box.dart';
import 'package:calculate/presentation/app/theme/app_theme.dart';
import 'package:calculate/presentation/widgets/normal_body_text_widgets.dart';
import 'package:calculate/presentation/widgets/not_normal_body_widgets.dart';
import 'package:flutter/material.dart';

import '../app/theme/app_colors.dart';
import '../app/utilites/string_method.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, this.bmi});
  final String? bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(StringMethods.upperTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBoxWidget.h180,
                const Text(
                  AppTexts.yourBmiIs,
                  style: AppThemes.fs50cg,
                ),
                SizedBoxWidget.h20,
                double.parse(bmi!) >= 18.5
                    ? const Text(
                        AppTexts.normal,
                        style: AppThemes.fs25cg,
                      )
                    : const Text(
                        AppTexts.notNormal,
                        style: AppThemes.fs25cpFw,
                      ),
                SizedBoxWidget.h4,
                double.parse(bmi!) >= 18.5
                    ? Text(
                        bmi!,
                        style: AppThemes.fs50cg,
                      )
                    : Text(
                        bmi!,
                        style: AppThemes.fs50cp,
                      ),
                SizedBoxWidget.h20,
                const Text(
                  AppTexts.normalBmiRange,
                  style: AppThemes.fs30cg,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(AppTexts.normalBmiRangeValue,
                          style: AppThemes.fs25cw),
                      Text(AppTexts.kv, style: AppThemes.fs15cw),
                    ],
                ),
                SizedBoxWidget.h20,
                double.parse(bmi!) >= 18.5
                    ? const NormalBody()
                    : const NotNormalBody()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 80,
                  color: AppColors.pinkColor,
                  child: const Center(
                    child: Text(
                      AppTexts.reCalcBtn,
                      style: AppThemes.fs25cwFw,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
