import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradproject/Features/forget_pass/data/repo/forget_repo_impl.dart';
import 'package:gradproject/Features/forget_pass/presentation/view_model/cubit/forget_cubit_cubit.dart';

import 'package:gradproject/Features/forget_pass/presentation/views/forget.dart';
import 'package:gradproject/Features/register/presentation/views/register.dart';
import 'package:gradproject/views/widgets/sign.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gradproject/Features/login/presentation/views/login.dart';
import 'package:gradproject/Features/home/presentation/views/main_page.dart';
import 'package:gradproject/views/splash_view.dart';
import 'package:gradproject/core/utls/api_sign.dart';

import 'package:gradproject/Features/details/presentation/views/widgets/details_body.dart';
import 'package:gradproject/Features/home/presentation/views/search_category.dart';
import 'package:gradproject/Features/search_services/presentation/views/search_service.dart';
import 'package:gradproject/Features/login/data/repo/login_repo_impl.dart';
import 'package:gradproject/Features/register/data/repo/register_repo_impl.dart';
import 'package:gradproject/Features/login/presentation/view_model/cubit/login_cubit_cubit.dart';
import 'package:gradproject/Features/register/presentation/view_model/cubit/register_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const GradProject());
}

class GradProject extends StatelessWidget {
  const GradProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubitCubit(LoginRepoImpl(ApiServiceSign()))),
        BlocProvider(create: (context) => RegisterCubit(RegisterRepoImpl(ApiServiceSign()))),
        BlocProvider(create: (context) => ForgetCubitCubit(ForgetRepoImpl(ApiServiceSign()))),
      ],
      child: MaterialApp(
        title: 'Grad Project',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'ElMessiri'),
        home: const AppStartup(),
        routes: {
          MainPage.homePageId: (context) => const MainPage(),
          DetailsBody.detailsBodyId: (context) => const DetailsBody(),
          SearchService.serviceSearchId: (context) => const SearchService(),
          SearchCategory.searchCategoryId: (context) => const SearchCategory(),
          Sign.id: (context) => const Sign(),
           Forget.forgetId: (context) => const Forget(),
          'login': (context) => const Login(),
          'register': (context) => const Register(),
        },
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'EG'), // Arabic, Egypt
        ],
      ),
    );
  }
}

class AppStartup extends StatefulWidget {
  const AppStartup({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppStartupState createState() => _AppStartupState();
}

class _AppStartupState extends State<AppStartup> {
  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    // ignore: use_build_context_synchronously
    
    Navigator.of(context).pushReplacementNamed(isLoggedIn ? MainPage.homePageId : 'login');
  }
  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}
