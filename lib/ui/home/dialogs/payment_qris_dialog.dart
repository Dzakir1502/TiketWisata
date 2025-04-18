import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:tiket_wisata/ui/home/page/payment_success_page.dart';
import 'package:timer_count_down/timer_count_down.dart';
import '../../../core/core.dart';

class PaymentQrisDialog extends StatelessWidget {
  const PaymentQrisDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Show This QR Code to Customer'),
          const SpaceHeight(24.0),
          InkWell(
            onTap: () => context.pushReplacement(const PaymentSuccessPage()),
            child: SizedBox(
              height: 200.0,
              width: 200.0,
              child: QrImageView(
                data: "bayar-qris",
                version: QrVersions.auto,
                size: 100.0,
              ),
            ),
          ),
          const SpaceHeight(24.0),
          Countdown(
            seconds: 360, 
            build: (context, time)=> Text.rich(
              TextSpan(
                text: "update after ",
                children: [
                  TextSpan(
                    text:'${time.toInt()}s',
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ]
              )
            ),
            onFinished: (){},
            )
        ],
      ),
    );
  }
}
