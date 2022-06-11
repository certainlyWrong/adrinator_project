import 'pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:adrinator/utils/themes.dart';

void main() {
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
