import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mobile_app_ui_flutter/view/bookmarks_page.dart';
import 'package:mobile_app_ui_flutter/view/courses_page.dart';
import 'package:mobile_app_ui_flutter/view/user_page.dart';

import '../constant/colors.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pagesList = const [
    HomePage(),
    CoursesPage(),
    BookmarkPage(),
    UserPage(),
  ];

  var currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: pagesList[currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      unselectedFontSize: 0,
      selectedItemColor: accentColor,
      backgroundColor: bgColor,
      elevation: 4,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(IconlyLight.home),
            activeIcon: Icon(IconlyBold.home)
        ),
        BottomNavigationBarItem(
            label: 'Schedule',
            icon: Icon(IconlyLight.calendar)
        ),
        BottomNavigationBarItem(
            label: 'Bookmark',
            icon: Icon(IconlyLight.bookmark)
        ),
        BottomNavigationBarItem(
            label: 'Personal',
            icon: Icon(IconlyLight.user2)
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(""),
      titleTextStyle: const TextStyle(color: fontLightColor),
      backgroundColor: bgColor,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 22.0, top: 15.0),
          child: GestureDetector(
            onTap: (){
              ///notification
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(IconlyLight.notification, color: fontLightColor, size: 28,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: const BoxDecoration(
                      color: accentColor,
                      shape: BoxShape.circle
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
