import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../model/course_model.dart';

class TrendingCourse extends StatelessWidget {

  final coursesList = CourseModel.listOfCourses();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleRow(),
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

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 3,
          child: Text('Trending Courses',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
                fontSize: 18),
          ),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: (){
              ///view all courses
            },
            child: const Text('View all',
              style: TextStyle(
                color: fontLightColor,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.right,
            ),
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
