import 'package:adrinator/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    );

    Future.delayed(const Duration(milliseconds: 5000)).then((value) {
      // Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
      Navigator.of(context).pushAndRemoveUntil(
        PageTransition(
          child: const HomePage(),
          type: PageTransitionType.topToBottom,
          alignment: Alignment.bottomCenter,
          duration: const Duration(milliseconds: 500),
        ),
        (_) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              child: RepaintBoundary(
                child: Image.network(
                  width: 300,
                  'https://camo.githubusercontent.com/a2617dec018bcadafb37382a5de8e8249a810c17a63a81e1244ac10958f79c1f/68747470733a2f2f666f72756d732d696d616765732e6f6e65706c75732e6e65742f646174612f776562696d672f323032312f30312d32392f363031343337346533613736322e676966',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "print('hello world')",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
