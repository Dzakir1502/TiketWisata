import 'package:flutter/material.dart';
import 'package:tiket_wisata/core/extensions/build_context_ext.dart';
import 'package:tiket_wisata/ui/intro/login_page.dart';
import '../../core/core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2),
        () => context.pushReplacement(const LoginPage()),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(96.0),
        child: Center(
          child: Assets.images.logoBlue.image(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100.0,
        child: Align(
          alignment: Alignment.center,
          child: Assets.images.logoIdn.image(height: 90),
        ),
      ),
    );
  }
}
