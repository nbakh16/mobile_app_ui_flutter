import 'package:flutter/material.dart';
import 'package:mobile_app_ui_flutter/widgets/text_icon_item.dart';

import '../utils/colors.dart';

class FABPopupMenu extends StatelessWidget {
  const FABPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(28)
      ),
      child: const Padding(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextIconItem(
              title: 'Mood check-in',
              icon: Icons.tag_faces,
            ),
            TextIconItem(
              title: 'Voice note',
              icon: Icons.keyboard_voice,
            ),
            TextIconItem(
              title: 'Add photo',
              icon: Icons.photo,
            ),
          ],
        ),
      ),
    );
  }
}

