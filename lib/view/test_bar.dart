import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mobile_app_ui_flutter/view/demo_page.dart';

import '../utils/colors.dart';
import '../widgets/fab_popup_menu.dart';

class TestBottomNavBase extends StatefulWidget {
  const TestBottomNavBase({super.key});

  @override
  State<TestBottomNavBase> createState() => _TestBottomNavBaseState();
}

class _TestBottomNavBaseState extends State<TestBottomNavBase> with TickerProviderStateMixin{
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  bool customDialRoot = true;
  bool extend = false;
  bool rmIcons = false;

  bool isFABinitialIcon = false;
  late AnimationController _animationController;
  bool isFABexpanded = false;

  final List<Widget> _screens = const [
    DemoPage(page: 1,),
    DemoPage(page: 2,),
    DemoPage(page: 3,),
    DemoPage(page: 4,),
  ];

  int _currentSelectedIndex = 0;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
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
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _screens[_currentSelectedIndex],
          AnimatedPositioned(
            bottom: isFABexpanded ? -22 : -300,
            duration: const Duration(seconds: 1),
            child: FABPopupMenu()
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 4,
        notchMargin: 0,
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          isFABexpanded = !isFABexpanded;
          setState(() {});

          if(isFABinitialIcon == false) {
            _animationController.forward();
            isFABinitialIcon = true;
          } else {
            _animationController.reverse();
            isFABinitialIcon = false;
          }

        },
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animationController,
        ),
      ),
      // floatingActionButton: SpeedDial(
      //   icon: Icons.add,
      //   activeIcon: Icons.close,
      //   spacing: 0,
      //   openCloseDial: isDialOpen,
      //   childPadding: EdgeInsets.all(0),
      //   childMargin: EdgeInsets.all(0),
      //   spaceBetweenChildren: 0,
      //   direction: SpeedDialDirection.up,
      //   renderOverlay: true,
      //   overlayColor: AppColors.primary,
      //   overlayOpacity: 0.35,
      //   animationDuration: Duration(milliseconds: 550),
      //   children: [
      //     SpeedDialChild(
      //       labelWidget: Center(
      //         child: Container(
      //           height: 300,
      //           width: 200,
      //           decoration: BoxDecoration(
      //               color: AppColors.purple,
      //               borderRadius: BorderRadius.circular(8)),
      //           child: Column(
      //             children: [
      //               Row(
      //                 children: [
      //                   Text('hel'),
      //                   ColoredBox(
      //                     color: AppColors.purpleGrey,
      //                     child: Icon(Icons.image),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
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
