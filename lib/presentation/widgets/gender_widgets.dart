import 'package:calculate/presentation/app/constants/app_paddings.dart';
import 'package:calculate/presentation/app/constants/app_text.dart';
import 'package:calculate/presentation/app/theme/app_colors.dart';
import 'package:calculate/presentation/app/theme/app_theme.dart';
import 'package:calculate/presentation/widgets/gender_box_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../app/constants/sized_box.dart';

enum Gender { male, female }

class GenderWidgets extends StatefulWidget {
  const GenderWidgets({Key? key}) : super(key: key);

  @override
  _GenderWidgetsState createState() => _GenderWidgetsState();
}

class _GenderWidgetsState extends State<GenderWidgets> {
  Gender? gender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderBoxWidget(
            onTap: () {
              setState(() {
                gender = Gender.male;
              });
            },
            color: gender == Gender.male ? AppColors.activeClass : AppColors.lightGreyColor,
            child: Padding(
              padding: AppPaddings.p40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.mars,
                    size: 70,
                    color: AppColors.whiteColor,
                  ),
                  SizedBoxWidget.h20,
                  Text(
                    AppTexts.male,
                    style: AppThemes.fs20cw,
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GenderBoxWidget(
            onTap: () {
              setState(() {
                gender = Gender.female;
              });
            },
            color: gender == Gender.female ? AppColors.activeClass : AppColors.lightGreyColor,
            child: Padding(
              padding: AppPaddings.p40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.venus,
                    size: 70,
                    color: AppColors.whiteColor,
                  ),
                  SizedBoxWidget.h20,
                  Text(
                    AppTexts.female,
                    style: AppThemes.fs20cw,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
