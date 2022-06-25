import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adrinator/utils/themes.dart';
import 'package:adrinator/pages/splash/splash.dart';
import 'package:flutter/rendering.dart';

void main() async {
  if (kDebugMode) {
    debugRepaintRainbowEnabled = true;
  }

  runApp(const Init());
}

class Init extends StatelessWidget {
  const Init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      theme: light,
      darkTheme: dark,
      themeMode: ThemeMode.light,
    );
  }
}
