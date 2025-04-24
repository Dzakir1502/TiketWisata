import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiket_wisata/core/core.dart';
import 'package:tiket_wisata/presentation/ui/home/page/payment_success_page.dart';

class PaymentTunaiDialog extends StatefulWidget {
  final int totalPrice;
  const PaymentTunaiDialog({super.key, required this.totalPrice});

  @override
  State<PaymentTunaiDialog> createState() => _PaymentTunaiDialogState();
}

class _PaymentTunaiDialogState extends State<PaymentTunaiDialog> {
  final nominalController = TextEditingController();
  int paidIndex = -1;

  void initState() {
    nominalController.text = widget.totalPrice.currencyFormatRp;
    super.initState();
  }

  void dispose() {
    nominalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SpaceHeight(12.0),
          CustomTextField(
              controller: nominalController, label: 'Masukan Nominal'),
          const SpaceHeight(12.0),
          Row(
            children: [
              Flexible(
                child: Button.filled(
                  onPressed: () => setState(() => paidIndex = 0),
                  label: 'Uang Pas',
                  borderRadius: 10.0,
                  fontSize: 14.0,
                  textColor: paidIndex == 0 ? AppColors.white : AppColors.grey,
                  color:
                      paidIndex == 0 ? AppColors.primary : Colors.transparent,
                ),
              ),
              const SpaceHeight(20.0),
              Flexible(
                  child: Button.filled(
                onPressed: () => setState(() => paidIndex = 1),
                label: 20000.currencyFormatRp,
                borderRadius: 10.0,
                fontSize: 14.0,
                textColor: paidIndex == 1 ? AppColors.white : AppColors.grey,
                color: paidIndex == 1 ? AppColors.primary : Colors.transparent,
              ))
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Button.filled(
                  onPressed: () => setState(() => paidIndex = 2),
                  label: 150000.currencyFormatRp,
                  borderRadius: 10.0,
                  fontSize: 14.0,
                  textColor: paidIndex == 2 ? AppColors.white : AppColors.grey,
                  color:
                      paidIndex == 2 ? AppColors.primary : Colors.transparent,
                ),
              ),
              const SpaceHeight(20.0),
              Flexible(
                  child: Button.filled(
                onPressed: () => setState(() => paidIndex = 3),
                label: 20000.currencyFormatRp,
                borderRadius: 10.0,
                fontSize: 14.0,
                textColor: paidIndex == 3 ? AppColors.white : AppColors.grey,
                color: paidIndex == 3 ? AppColors.primary : Colors.transparent,
              ))
            ],
          ),
          const SpaceHeight(24.0),
          Button.filled(
            disabled: paidIndex == -1,
            onPressed: () {
              context.pushReplacement(const PaymentSuccessPage());
            },
            label: 'Bayar',
            fontSize: 16.0,
            borderRadius: 10.0,
          )
        ],
      ),
    );
  }
}
