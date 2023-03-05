import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mobile_app_ui_flutter/constant/colors.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({
    required this.courseImage,
    required this.courseName,
    required this.description,
    required this.duration,
    required this.instructor,
    super.key
  });

  String courseImage;
  String courseName;
  String description;
  String duration;
  String instructor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageAppBar(courseImage: courseImage,),
          const AppbarButtons(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(height: 200,),
                Text(courseName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: fontColor),),
                Text(instructor, style: TextStyle(color: fontLightColor),),
                SizedBox(height: 12,),
                Text(description, textAlign: TextAlign.justify,),
                SizedBox(height: 12,),
                Text('Duration: $duration'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppbarButtons extends StatelessWidget {
  const AppbarButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(IconlyLight.arrowLeft, color: bgColor, size: 28,)
          ),
          GestureDetector(
            onTap: (){
              ///notification
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(IconlyLight.notification, color: bgColor, size: 28,),
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
        ],
      ),
    );
  }
}

class ImageAppBar extends StatelessWidget {
  ImageAppBar({
    required this.courseImage,
    super.key
  });

  String courseImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: appbarColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40)
        )
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40)
        ),
        child: Image.asset(courseImage,
            fit: BoxFit.fill,
            color: Colors.black.withOpacity(0.2),
            colorBlendMode: BlendMode.dstATop
        ),
      ),
    );
  }
}

