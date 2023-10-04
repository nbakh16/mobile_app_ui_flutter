import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key, this.page = 0});

  final int page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text('$page',
              style: TextStyle(
                fontSize: 225,
                color: Colors.white.withOpacity(0.15)
              ),
            ),
            Text('Page',
                style: Theme.of(context).textTheme.titleLarge
            ),
          ],
        ),
      ),
    );
  }
}
