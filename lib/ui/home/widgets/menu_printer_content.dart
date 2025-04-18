import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../models/printer_model.dart';

class MenuPrinterContent extends StatelessWidget {
  final PrinterModel printerModel;

  const MenuPrinterContent({super.key,
    required this.printerModel,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.stroke,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name: ${printerModel.name}',
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Address: ${printerModel.address}',
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

