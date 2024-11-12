import 'package:flutter/cupertino.dart';
import 'package:threads_clone/presentation/auth/pages/sign_in_page.dart';
import 'package:threads_clone/presentation/home/pages/home_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  SignInPage.routeName: (context) => const SignInPage(),
  HomePage.routeName: (context) => const HomePage(),
};
