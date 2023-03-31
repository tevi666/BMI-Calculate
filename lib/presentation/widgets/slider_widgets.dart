// import 'package:flutter/material.dart';
//
// import '../app/theme/app_colors.dart';
// import 'gender_box_widgets.dart';
//
// class SliderWidgets extends StatefulWidget {
//   @override
//   _SliderWidgets createState() => _SliderWidgets();
// }
//
// class _SliderWidgets extends State<SliderWidgets> {
//   var height = 150;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: GenderBoxWidget(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text('HEIGHT',
//               style: TextStyle(
//                 color: AppColors.whiteColor,
//                 fontSize: 40,
//               )),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(height.toString(),
//                   style: const TextStyle(
//                       color: AppColors.whiteColor,
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold)),
//               Text('cm', style: TextStyle(color: AppColors.whiteColor, fontSize: 20),)
//             ],
//           ),
//           Slider(
//             min: 130,
//             max: 220,
//             activeColor: AppColors.sliderColor,
//             value: height.toDouble(),
//             onChanged: (value) {
//               setState(() {
//                 height = value.round();
//               });
//             },
//           )
//         ],
//       ),
//     ));
//   }
// }
