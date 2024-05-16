
import 'package:flutter/material.dart';

import 'package:gradproject/Features/home/presentation/views/main_page.dart';

import 'package:gradproject/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const GradProject());
}

class GradProject extends StatelessWidget {
  const GradProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
