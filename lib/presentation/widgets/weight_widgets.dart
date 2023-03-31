// import 'package:calculate/presentation/app/theme/app_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../app/constants/sized_box.dart';
// import '../app/theme/app_colors.dart';
// import 'gender_box_widgets.dart';
//
// class WeightWidgets extends StatefulWidget {
//   const WeightWidgets({Key? key}) : super(key: key);
//
//   @override
//   _WeightWidgets createState() => _WeightWidgets();
// }
//
// class _WeightWidgets extends State<WeightWidgets> {
//   var _weight = 0;
//   int get weight => _weight;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: GenderBoxWidget(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text(
//             'WEIGHT',
//             style: AppThemes.fs30cw,
//           ),
//           SizedBoxWidget.h20,
//           Text('${_weight}kg',
//               style: const TextStyle(
//                   color: AppColors.whiteColor,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold)),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 RawMaterialButton(
//                     child: Icon(FontAwesomeIcons.plus),
//                     shape: CircleBorder(),
//                     constraints: const BoxConstraints.tightFor(
//                       width: 50,
//                       height: 50,
//                     ),
//                     elevation: 10,
//                     fillColor: AppColors.btnColor,
//                     onPressed: () {
//                       setState(() {
//                         _weight++;
//                       });
//                     }),
//                 SizedBoxWidget.w10,
//                 RawMaterialButton(
//                     child: Icon(FontAwesomeIcons.minus),
//                     shape: CircleBorder(),
//                     constraints: const BoxConstraints.tightFor(
//                       width: 50,
//                       height: 50,
//                     ),
//                     elevation: 10,
//                     fillColor: AppColors.btnColor,
//                     onPressed: () {
//                       setState(() {
//                         _weight--;
//                       });
//                     })
//               ],
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
