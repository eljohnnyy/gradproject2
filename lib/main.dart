
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradproject/Features/details/presentation/views/widgets/details_body.dart';

import 'package:gradproject/Features/home/presentation/views/main_page.dart';
import 'package:gradproject/Features/home/presentation/views/search_category.dart';
import 'package:gradproject/Features/login/data/repo/login_repo_impl.dart';
import 'package:gradproject/Features/login/presentation/view_model/cubit/login_cubit_cubit.dart';
import 'package:gradproject/Features/login/presentation/views/login.dart';
import 'package:gradproject/Features/register/presentation/views/register.dart';
import 'package:gradproject/Features/search_services/presentation/views/search_service.dart';
import 'package:gradproject/core/utls/api_sign.dart';

import 'package:gradproject/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gradproject/views/widgets/sign.dart';

void main() {
  runApp(const GradProject());
}

class GradProject extends StatelessWidget {
  const GradProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>LoginCubitCubit(LoginRepoImpl(ApiServiceSign())))
      ],
      child: MaterialApp(
        
        routes: {
          MainPage.homePageId: (context) => const MainPage(),
          DetailsBody.detailsBodyId:(context) => const DetailsBody(),
          SearchService.serviceSearchId:(context) => const SearchService(),
          SearchCategory.searchCategoryId:(context) => const SearchCategory(),
          Sign.id:(context) => const Sign(),
          "login": (context) => const Login(),
          "register": (context) => const Register(),
      
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
