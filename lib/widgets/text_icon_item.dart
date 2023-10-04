import 'package:flutter/material.dart';

import '../utils/colors.dart';

class TextIconItem extends StatelessWidget {
  const TextIconItem({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  color: AppColors.purpleGrey.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Icon(icon, size: 22, color: AppColors.vanillaWhite,),
            )
          ],
        ),
      ),
    );
  }
}