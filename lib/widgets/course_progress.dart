import 'package:flutter/material.dart';
import 'package:mobile_app_ui_flutter/widgets/title_row.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../constant/colors.dart';

class CoursesProgress extends StatelessWidget {
  const CoursesProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 22,),
        TitleRow(primaryText: 'Your Course', secondaryText: 'View all'),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: fontLightColor.withOpacity(0.1),
            border: Border.all(
              color: fontLightColor.withOpacity(0.5),
              width: 1
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/images/course02.png', height: 85,),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Web Development',
                        style: TextStyle(
                          color: fontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('by Course Tutor',
                        style: TextStyle(
                            color: fontLightColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
                CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 6.0,
                  percent: 0.66,
                  center: const Text("66%",
                    style: TextStyle(color: fontColor),
                  ),
                  progressColor: accentColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
