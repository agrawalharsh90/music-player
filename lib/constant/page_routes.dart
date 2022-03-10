import 'package:flutter/material.dart';
import 'package:stack_assignment/presentation/pages/home_page.dart';
import 'package:stack_assignment/presentation/pages/splash_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SplashPage.routeNamed: (BuildContext context) => const SplashPage(),
  HomePage.routeNamed: (BuildContext context) => const HomePage(),
};
