import 'package:flutter/material.dart';
import 'package:mobile_app_ui_flutter/widgets/title_row.dart';

import '../constant/colors.dart';
import '../model/course_model.dart';
import '../view/course_details.dart';

class TrendingCourse extends StatelessWidget {

  final coursesList = CourseModel.listOfCourses();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleRow(primaryText: 'Trending Courses', secondaryText: 'View all'),
        const SizedBox(height: 8,),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: coursesList.length,
            itemBuilder: (context, index) => GestureDetector(
              child: CourseItem(
                  coursesList[index]
              ),
              onTap: () {
                ///course details page
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CourseDetails(
                    courseImage: coursesList[index].courseImage,
                    courseName: coursesList[index].courseName,
                    description: coursesList[index].courseDescription,
                    duration: coursesList[index].courseDuration,
                    instructor: coursesList[index].courseInstructor,
                  ),
                ));
                print('index: $index, course name: ${coursesList[index].courseName}');
              },
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 12,),
          ),
        ),
      ],
    );
  }
}

class CourseItem extends StatelessWidget {

  final CourseModel courseModel;
  CourseItem(this.courseModel);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: double.infinity,
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(courseModel.courseImage, fit: BoxFit.cover,)
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
          height: 90,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(courseModel.courseName,
                style: TextStyle(color: fontColor, fontSize: 14, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2,),
              Text(courseModel.courseDescription,
                style: TextStyle(color: fontColor, fontSize: 12, fontWeight: FontWeight.normal),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Divider(color: primaryColor.withOpacity(0.5), thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: fontColor, fontSize: 10, fontWeight: FontWeight.normal),
                      children: <TextSpan>[
                        TextSpan(text: "by "),
                        TextSpan(
                          text: courseModel.courseInstructor,
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
                        )
                      ]
                    )
                  ),
                  Text(courseModel.courseDuration,
                    style: TextStyle(color: fontLightColor, fontSize: 12, fontWeight: FontWeight.normal),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
