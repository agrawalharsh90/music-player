import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stack_assignment/constant/app_config.dart';
import 'package:stack_assignment/presentation/music_player.dart';

setup(Environment env) {
  AppConfig.setUpEnv(env);
  runZoned<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    _runApp();
  });
}

void _runApp() {
  runApp(const MusicPlayer(
    key: Key("music-player"),
  ));
}
