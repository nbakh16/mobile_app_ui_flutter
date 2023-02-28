import 'package:flutter/material.dart';

import '../constant/colors.dart';

class TitleRow extends StatelessWidget {
  TitleRow({
    required this.primaryText,
    required this.secondaryText,
    super.key
  });

  String primaryText;
  String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Text(primaryText,
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
            child: Text(secondaryText,
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