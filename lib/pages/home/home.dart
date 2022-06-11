import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildDesktop(context);
          } else {
            return _buildMobile(context);
          }
        }),
      ),
    );
  }
}

Widget _buildDesktop(BuildContext context) {
  return Center(
    child: Container(
      color: Theme.of(context).colorScheme.background,
      child: const Center(
        child: Text('Desktop'),
      ),
    ),
  );
}

Widget _buildMobile(BuildContext context) {
  return const Center(
    child: Text('Mobile'),
  );
}
