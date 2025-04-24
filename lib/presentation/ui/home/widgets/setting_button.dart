import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/core.dart';

class SettingButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

  const SettingButton({super.key, 
  required this.iconPath,
  required this.title,
  required this.subTitle,
  required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: AppColors.black.withOpacity(5/100),
              blurRadius: 30.0,
              spreadRadius: 0,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            const SpaceHeight(10.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 12.0,
                color: AppColors.grey
              ),
            ),
          ],
        ),
      ),

    );
  }
}