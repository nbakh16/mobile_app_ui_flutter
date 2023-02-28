import 'package:flutter/material.dart';
import 'package:mobile_app_ui_flutter/constant/colors.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/course_progress.dart';
import '../widgets/trending_courses.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const WelcomeText(),
                const SearchTextField(),
                TrendingCourse(),
                const CoursesProgress()
              ],
            ),
          ),
        ),
      ),
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

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              decoration: BoxDecoration(
                border: Border.all(color: fontLightColor.withOpacity(0.75), width: 1.25),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12)
                )
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: fontLightColor.withOpacity(0.05),
                  border: InputBorder.none,
                  hintText: 'Search for courses',
                  hintStyle: TextStyle(color: fontLightColor.withOpacity(0.55))
                ),
                cursorColor: fontColor,
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                ///search condition
              },
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      topRight: Radius.circular(12)
                  )
                ),
                child: const Icon(IconlyLight.search, color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            style: TextStyle(
                color: fontLightColor,
                fontSize: 18,
                fontWeight: FontWeight.normal
            ),
            children: <TextSpan>[
              TextSpan(text: "Greetings, \n\n"),
              TextSpan(
                  text: 'What a day to learn\nsomething new!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: fontColor,
                      fontSize: 22
                  )
              )
            ]
        )
    );
  }
}
