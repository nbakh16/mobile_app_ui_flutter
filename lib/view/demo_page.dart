import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key, this.page = 0});

  final page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page $page'),
      ),
    );
  }
}
