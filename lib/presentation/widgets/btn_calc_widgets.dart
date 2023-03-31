// import 'package:flutter/material.dart';
//
// import '../app/theme/app_colors.dart';
// import '../screens/result_screen.dart';
//
// class BtnCalcWidgets extends StatefulWidget {
//   const BtnCalcWidgets({Key? key}) : super(key: key);
//
//   @override
//   _BtnCalcWidgets createState() => _BtnCalcWidgets();
// }
//
// class _BtnCalcWidgets extends State<BtnCalcWidgets> {
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final heightSquared = 2 / 100;
//         final res = 2 / (heightSquared * heightSquared);
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => ResultPage(
//                   bmi: res.round().toString(),
//                 )));
//       },
//       child: Container(
//         height: 80,
//         color: AppColors.pinkColor,
//         child: const Center(
//             child: Text(
//               'CALCULATE MY BMI',
//               style: TextStyle(
//                   color: AppColors.whiteColor,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold),
//             )),
//       ),
//     );
//   }
// }
