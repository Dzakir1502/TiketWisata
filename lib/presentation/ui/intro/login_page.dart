import 'package:flutter/material.dart';
import 'package:tiket_wisata/core/components/components.dart';
import 'package:tiket_wisata/core/components/spaces.dart';
import 'package:tiket_wisata/core/extensions/build_context_ext.dart';
import 'package:tiket_wisata/presentation/ui/home/page/main_page.dart';
import '../../../core/core.dart';
import 'package:tiket_wisata/core/components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(children: [
        SizedBox(
          height: 260.0,
          child: Center(
            child: Assets.images.logoWhite.image(width: 200, height: 200),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              child: ColoredBox(
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 44.0,
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      controller: emailController,
                      label: 'Email',
                      isOutlineBorder:false
                    ),
                    const SizedBox(height: 36.0),
                    CustomTextField(
                      controller: passwordController,
                      obscureText: true,
                      label: 'Password',
                      isOutlineBorder: false,
                  
                    ),
                    const SpaceHeight(86.0),
                    Button.filled(onPressed: (){
                      context.pushReplacement(const MainPage());
                    },
                    label: 'Login'
                    ),
                    const SpaceHeight(128.0),
                    Center(
                      child:
                          Assets.images.logoIdn.image(width: 100, height: 50),
                    ),
                  ],
                ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
