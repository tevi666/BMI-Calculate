import 'package:calculate/presentation/app/constants/app_paddings.dart';
import 'package:calculate/presentation/app/constants/app_text.dart';
import 'package:calculate/presentation/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../app/constants/sized_box.dart';
import '../app/theme/app_colors.dart';
import 'gender_box_widgets.dart';

class AgeWidgets extends StatefulWidget {
  const AgeWidgets({Key? key}) : super(key: key);

  @override
  _AgeWidgets createState() => _AgeWidgets();
}

class _AgeWidgets extends State<AgeWidgets> {
  var age = 25;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GenderBoxWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBoxWidget.h20,
            const Text(
              AppTexts.age,
              style: AppThemes.fs30cw,
            ),
            SizedBoxWidget.h14,
            Text(
              age.toString(),
              style: AppThemes.fs40cwfWb,
            ),
            Padding(
              padding: AppPaddings.p30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    child: Icon(
                      FontAwesomeIcons.plus,
                    ),
                    shape: const CircleBorder(),
                    constraints: const BoxConstraints.tightFor(
                      width: 50,
                      height: 50,
                    ),
                    elevation: 10,
                    fillColor: AppColors.btnColor,
                    onPressed: () {
                      setState(
                        () {
                          age++;
                        },
                      );
                    },
                  ),
                  SizedBoxWidget.w10,
                  RawMaterialButton(
                    child: Icon(
                      FontAwesomeIcons.minus,
                    ),
                    shape: const CircleBorder(),
                    constraints: const BoxConstraints.tightFor(
                      width: 50,
                      height: 50,
                    ),
                    elevation: 10,
                    fillColor: AppColors.btnColor,
                    onPressed: () {
                      setState(
                        () {
                          age--;
                        },
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
