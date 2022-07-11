import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:adrinator/utils/themes.dart';
import 'package:adrinator/pages/splash/splash.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  if (kDebugMode) {
    debugRepaintRainbowEnabled = true;
  }
  
  setUrlStrategy(PathUrlStrategy());
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
