import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stack_assignment/constant/styles.dart';
import 'package:stack_assignment/presentation/custom/safe_scaffold.dart';
import 'package:stack_assignment/presentation/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  static const String routeNamed = "/";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => _navigation());
  }

  _navigation() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomePage.routeNamed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
        body: Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Styles.primaryColor),
      ),
    ));
  }
}
