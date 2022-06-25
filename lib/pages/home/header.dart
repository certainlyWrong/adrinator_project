import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RepaintBoundary(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: Image.network(
                  'https://images.unsplash.com/photo-1559583985-c80d8ad9b29f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxMDY1OTc2fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
                ),
              ),
            ),
            ElevatedButton(
              child: const Text("go"),
              onPressed: () => _controller.forward(),
            ),
            ElevatedButton(
              child: const Text("reset"),
              onPressed: () => _controller.reset(),
            ),
          ],
        ),
      ),
    );
  }
}
