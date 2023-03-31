import 'package:calculate/presentation/app/constants/app_border_radius.dart';
import 'package:calculate/presentation/app/constants/app_margins.dart';
import 'package:flutter/material.dart';

import '../app/theme/app_colors.dart';

class GenderBoxWidget extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final Function()? onTap;
  const GenderBoxWidget({super.key, this.color = AppColors.lightGreyColor, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: AppMargins.all10,
        decoration: BoxDecoration(
            color: color,
            borderRadius: AppBorderRadius.all10circ),
      ),
    );
  }
}
