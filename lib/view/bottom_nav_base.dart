import 'package:flutter/material.dart';
import 'package:mobile_app_ui_flutter/view/demo_page.dart';

import '../utils/colors.dart';

class BottomNavBase extends StatefulWidget {
  const BottomNavBase({super.key});

  @override
  State<BottomNavBase> createState() => _BottomNavBaseState();
}

class _BottomNavBaseState extends State<BottomNavBase> {
  final List<Widget> _screens = const [
    DemoPage(page: 1,),
    DemoPage(page: 2,),
    DemoPage(page: 3,),
    DemoPage(page: 4,),
  ];

  int _currentSelectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentSelectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: AnimatedContainer(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          duration: Duration(seconds: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _currentSelectedIndex = 0;
                  setState(() {});
                },
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.home, size: 35, color: _currentSelectedIndex == 0 ? AppColors.primary : AppColors.grey),
                      Positioned(
                        bottom: 1,
                        child: Text('●', style: TextStyle(color: _currentSelectedIndex == 0 ?  AppColors.primary : Colors.transparent),))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _currentSelectedIndex = 1;
                  setState(() {});
                },
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.home, size: 35, color: _currentSelectedIndex == 1 ? AppColors.primary : AppColors.grey),
                      Positioned(
                          bottom: 1,
                          child: Text('●', style: TextStyle(color: _currentSelectedIndex == 1 ?  AppColors.primary : Colors.transparent),))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _currentSelectedIndex = 2;
                  setState(() {});
                },
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.home, size: 35, color: _currentSelectedIndex == 2 ? AppColors.primary : AppColors.grey),
                      Positioned(
                          bottom: 1,
                          child: Text('●', style: TextStyle(color: _currentSelectedIndex == 2 ?  AppColors.primary : Colors.transparent),))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _currentSelectedIndex = 3;
                  setState(() {});
                },
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.home, size: 35, color: _currentSelectedIndex == 3 ? AppColors.primary : AppColors.grey),
                      Positioned(
                          bottom: 1,
                          child: Text('●', style: TextStyle(color: _currentSelectedIndex == 3 ?  AppColors.primary : Colors.transparent),))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
    );
  }
}
