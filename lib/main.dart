import 'package:flutter/material.dart';

import 'package:tiket_wisata/presentation/ui/intro/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/core.dart';

import 'presentation/bloc/auth_bloc.dart';
import 'domain/usecase/login_usecase.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'data/datasources/auth_remote_datasources.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(
            LoginUseCase(
              AuthRepositoryImpl(
                AuthRemoteDatasources(),
              ),
            ),
          ),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tiket Wisata',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          dialogTheme: const DialogTheme(elevation: 0,), 
          textTheme: GoogleFonts.outfitTextTheme(
            Theme.of(context).textTheme,
          ),    
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.outfit(
              color: AppColors.primary,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black
            ),
            centerTitle: true
          )
        ),
        home: const SplashPage(),
      ),
    );
  }
}
