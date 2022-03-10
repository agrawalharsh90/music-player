import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stack_assignment/constant/app_config.dart';
import 'package:stack_assignment/constant/page_routes.dart';
import 'package:stack_assignment/constant/string_values.dart';
import 'package:stack_assignment/constant/styles.dart';
import 'package:stack_assignment/presentation/pages/splash_page.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _setSystemUiOverlay();
    _lockInPortraitMode();
    return MaterialApp(
      title: StringValue.appName,
      debugShowCheckedModeBanner: !AppConfig.isProduction,
      initialRoute: SplashPage.routeNamed,
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      routes: routes,
    );
  }

  _lockInPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  _setSystemUiOverlay() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Styles.greyBgColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Styles.greyBgColor,
    ));
  }
}
