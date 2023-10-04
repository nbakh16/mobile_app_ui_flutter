import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mobile_app_ui_flutter/view/demo_page.dart';

import '../utils/colors.dart';

class TestBottomNavBase extends StatefulWidget {
  const TestBottomNavBase({super.key});

  @override
  State<TestBottomNavBase> createState() => _TestBottomNavBaseState();
}

class _TestBottomNavBaseState extends State<TestBottomNavBase> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  bool customDialRoot = true;
  bool extend = false;
  bool rmIcons = false;

  final List<Widget> _screens = const [
    DemoPage(page: 1,),
    DemoPage(page: 2,),
    DemoPage(page: 3,),
    DemoPage(page: 4,),
  ];

  int _currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentSelectedIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 4,
        notchMargin: 0,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(0, Icons.home_outlined, 'Home'),
              _buildNavItem(1, Icons.category_outlined, 'Categories'),
              const SizedBox(width: 8.0,),
              _buildNavItem(2, Icons.shopping_cart, 'Shopping'),
              _buildNavItem(3, Icons.favorite_border, 'Favorites'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        spacing: 0,
        openCloseDial: isDialOpen,
        childPadding: EdgeInsets.all(0),
        spaceBetweenChildren: 0,
        direction: SpeedDialDirection.up,
        renderOverlay: true,
        animationDuration: Duration(milliseconds: 550),
        children: [
          SpeedDialChild(
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [
                  Text('hel'),
                  Text('hel'),
                  Text('hel'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          _currentSelectedIndex = index;
        });
       },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _currentSelectedIndex == index ? AppColors.primary : Colors.grey,
            size: 26,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: AnimatedContainer(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentSelectedIndex == index ? AppColors.primary : Colors.transparent,
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceOut,
            ),
          ),
        ],
      ),
    );
  }
}
