import 'package:flutter/material.dart';
import 'package:mobile_app_ui_flutter/utils/theme.dart';
import 'package:mobile_app_ui_flutter/view/bottom_nav_with_fab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: AppTheme().appThemeData(),
      home: const BottomNavWithFAB(),
    );
  }

}