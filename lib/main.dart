import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradproject/Features/home/data/repo/category_repo_impl.dart';
import 'package:gradproject/Features/home/presentation/view_model/cubit/category_cubit.dart';
import 'package:gradproject/Features/home/presentation/views/main_page.dart';
import 'package:gradproject/core/utls/api_services.dart';
import 'package:gradproject/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const GradProject());
}

class GradProject extends StatelessWidget {
  const GradProject({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(CategoryRepoImpl(ApiService(Dio()))),
      child: MaterialApp(
        routes: {
          MainPage.homePageId: (context) => const MainPage(),
        },
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'EG'), // English
        ],
        theme: ThemeData(fontFamily: 'ElMessiri'),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
