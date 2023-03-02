import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(courseImage, height: 200,),
              SizedBox(height: 8,),
              Text(courseName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: fontColor),),
              Text(instructor, style: TextStyle(color: fontLightColor),),
              SizedBox(height: 12,),
              Text(description),
              SizedBox(height: 12,),
              Text('Duration: $duration'),
            ],
          ),
        ),
      ),
    );
  }
}
