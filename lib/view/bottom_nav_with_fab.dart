import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mobile_app_ui_flutter/view/demo_page.dart';

import '../utils/colors.dart';
import '../widgets/fab_popup_menu.dart';

class BottomNavWithFAB extends StatefulWidget {
  const BottomNavWithFAB({super.key});

  @override
  State<BottomNavWithFAB> createState() => _BottomNavWithFABState();
}

class _BottomNavWithFABState extends State<BottomNavWithFAB> with TickerProviderStateMixin{
  final List<Widget> _screens = const [
    DemoPage(page: 1,),
    DemoPage(page: 2,),
    DemoPage(page: 3,),
    DemoPage(page: 4,),
  ];
  int _currentSelectedIndex = 0;

  bool isFABinitialIcon = true;
  late AnimationController _animationController;
  bool isFABexpanded = false;
  final Duration _duration = const Duration(milliseconds: 250);

  @override
  void initState() {
    _animationController = AnimationController(
      duration: _duration,
      vsync: this
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: collapseFAB,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            _screens[_currentSelectedIndex],
            AnimatedPositioned(
              bottom: !isFABexpanded ? -300 : 0,
              duration: _duration,
              child: const FABPopupMenu()
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 4,
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(28),
                topLeft: Radius.circular(28),
              ),
            ),
          ),
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomNavItem(0, Icons.wb_sunny_outlined),
                Stack(
                  children: [
                    _bottomNavItem(1, IconlyLight.notification),
                    const Positioned(
                      top: -12,
                      right: -2,
                      child: IgnorePointer(
                        child: Text('●',
                          style: TextStyle(color: AppColors.purple, fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 8.0,),
                _bottomNavItem(2, IconlyLight.graph),
                _bottomNavItem(3, Icons.copy),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: _fabOnTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0), // Adjust the value as needed
          ),
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
          ),
        ),
      ),
    );
  }

  void _fabOnTap() {
    isFABexpanded = !isFABexpanded;
    setState(() {});

    if(isFABinitialIcon == true) {
      _animationController.forward();
      isFABinitialIcon = false;
    } else {
      _animationController.reverse();
      isFABinitialIcon = true;
    }
  }

  GestureDetector _bottomNavItem(int index, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentSelectedIndex = index;
        });
        collapseFAB();
       },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: _duration,
            height: _currentSelectedIndex == index ? 32 : 28,
            width: _currentSelectedIndex == index ? 32 : 28,
            child: Expanded(
              child: Icon(
                icon,
                color: _currentSelectedIndex == index ? AppColors.primary : AppColors.purpleGrey.withOpacity(0.5),
                size: 30,
              ),
            ),
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
              duration: const Duration(milliseconds: 750),
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ],
      ),
    );
  }

  void collapseFAB() {
    if(mounted) {
      if(isFABexpanded == true) {
        setState(() {
          isFABexpanded = false;

          _animationController.reverse();
          isFABinitialIcon = true;
        });
      }
    }
  }
}
