import 'pages/splash.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:adrinator/utils/themes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
