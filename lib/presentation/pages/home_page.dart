import 'package:calculate/presentation/app/constants/app_paddings.dart';
import 'package:calculate/presentation/app/constants/sized_box.dart';
import 'package:calculate/presentation/app/theme/app_theme.dart';
import 'package:calculate/presentation/app/utilites/string_method.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_text.dart';
import '../app/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/result_screen.dart';
import '../widgets/age_widgets.dart';
import '../widgets/calc_btn_widgets.dart';
import '../widgets/gender_box_widgets.dart';
import '../widgets/gender_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var weight = 58;
  var height = 173;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: Text(StringMethods.upperTitle)),
      body: Column(
        children: [
          const GenderWidgets(),
          // SliderWidgets(),
          Expanded(
              child: GenderBoxWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(AppTexts.height, style: AppThemes.fs40cw),
                SizedBoxWidget.h10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: AppThemes.fs40cwfWb),
                    const Text(
                      AppTexts.cm,
                      style: AppThemes.fs20cw,
                    )
                  ],
                ),
                SizedBoxWidget.h14,
                Slider(
                  min: 130,
                  max: 220,
                  activeColor: AppColors.sliderColor,
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height = value.round();
                    });
                  },
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                // WeightWidgets(),
                Expanded(
                  child: GenderBoxWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBoxWidget.h20,
                        const Text(
                          AppTexts.weight,
                          style: AppThemes.fs30cw,
                        ),
                        SizedBoxWidget.h14,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: AppThemes.fs40cwfWb,
                            ),
                            const Text(
                              AppTexts.kg,
                              style: AppThemes.fs20cw,
                            ),
                          ],
                        ),
                        Padding(
                          padding: AppPaddings.p30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                  child: Icon(FontAwesomeIcons.plus),
                                  shape: CircleBorder(),
                                  constraints: const BoxConstraints.tightFor(
                                    width: 50,
                                    height: 50,
                                  ),
                                  elevation: 10,
                                  fillColor: AppColors.btnColor,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                              SizedBoxWidget.w10,
                              RawMaterialButton(
                                  child: Icon(FontAwesomeIcons.minus),
                                  shape: CircleBorder(),
                                  constraints: const BoxConstraints.tightFor(
                                    width: 50,
                                    height: 50,
                                  ),
                                  elevation: 10,
                                  fillColor: AppColors.btnColor,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  })
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                AgeWidgets(),
              ],
            ),
          ),
          SizedBoxWidget.h20,
          // BtnCalcWidgets(),
          GestureDetector(
            onTap: () {
              final heightSquared = height / 100;
              final res = weight / (heightSquared * heightSquared);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmi: res.toStringAsFixed(1),
                          )));
            },
            child: const CalcBtn(),
          )
        ],
      ),
    );
  }
}
