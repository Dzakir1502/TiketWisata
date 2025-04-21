import 'package:flutter/material.dart';
import '../../../core/core.dart';

class MenuPrinterButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const MenuPrinterButton({super.key,
  required this.label,
  required this.onPressed,
  required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: context.deviceWidth,
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 6
          ),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.stroke,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: isActive ? const[
              BoxShadow(
                offset:  Offset(0, 1),
                color: AppColors.white,
                blurRadius: 2,
                spreadRadius: 0
              ),
            ]
            : null,
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isActive ? AppColors.white : AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
