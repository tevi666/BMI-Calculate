// import 'package:flutter/material.dart';
//
// import '../app/constants/app_text.dart';
// import '../app/theme/app_colors.dart';
// import '../app/theme/app_theme.dart';
//
// class ReCalcBtn extends StatefulWidget {
//   const ReCalcBtn({Key? key}) : super(key: key);
//
//   @override
//   State<ReCalcBtn> createState() => _ReCalcBtnState();
// }
//
// class _ReCalcBtnState extends State<ReCalcBtn> {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: GestureDetector(
//         onTap: () {
//           Navigator.pop(context);
//         },
//         child: Container(
//           height: 80,
//           color: AppColors.pinkColor,
//           child: const Center(
//             child: Text(
//               AppTexts.reCalcBtn,
//               style: AppThemes.fs25cwFw,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
