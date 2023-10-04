import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/subsciption_plan.dart';
import '../utils/colors.dart';

class PlanFeaturesTable extends StatelessWidget {
  const PlanFeaturesTable({super.key});

  static final List<SubscriptionPlan> plans = [
    SubscriptionPlan(title: 'Free',
        exerciseAnimations: true,
        noAds: false,
        theme: false,
        customBreathing: false,
        bgMusic: false),
    SubscriptionPlan(title: 'Plus+',
        exerciseAnimations: true,
        noAds: true,
        theme: true,
        customBreathing: true,
        bgMusic: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.primaryAccent,
          borderRadius: BorderRadius.circular(14.0)
      ),
      padding: const EdgeInsets.all(12.0),
      child: DataTable(
        dividerThickness: 0,
        border: const TableBorder(
          horizontalInside: BorderSide(color: AppColors.primaryLight),
        ),
        columns: [
          const DataColumn(label: Text('')),
          for (final p in plans)
            DataColumn(label: Container(
              height: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: p.title == 'Free' ? Colors.transparent : AppColors.primary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
              ),
              child: Text(p.title,
                style: p.title == 'Free' ? TextStyle(
                  color:AppColors.vanillaWhite,
                ) :
                GoogleFonts.satisfy(
                  color: AppColors.amber,
                ),
              ),
            )),
        ],
        rows: [
          DataRow(cells: [
            const DataCell(Text('Exercise Animations')),
            for (final p in plans)
              DataCell(p.exerciseAnimations
                  ? Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:p.title == 'Plus+' ? AppColors.primary : Colors.transparent
                ),
                    child: Icon(
                Icons.check,
                color: p.title == 'Plus+'
                      ? AppColors.amber
                      : AppColors.vanillaWhite,
              ),
                  )
                  : const Icon(null)),
          ]),
          DataRow(cells: [
            const DataCell(Text('No Ads')),
            for (final p in plans)
              DataCell(p.noAds
                  ? Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:p.title == 'Plus+' ? AppColors.primary : Colors.transparent
                ),
                child: Icon(
                  Icons.check,
                  color: p.title == 'Plus+'
                      ? AppColors.amber
                      : AppColors.vanillaWhite,
                ),
              )
                  : const Icon(null)),
          ]),
          DataRow(cells: [
            const DataCell(Text('Theme')),
            for (final p in plans)
              DataCell(p.theme
                  ? Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:p.title == 'Plus+' ? AppColors.primary : Colors.transparent
                ),
                child: Icon(
                  Icons.check,
                  color: p.title == 'Plus+'
                      ? AppColors.amber
                      : AppColors.vanillaWhite,
                ),
              )
                  : const Icon(null)),
          ]),
          DataRow(cells: [
            const DataCell(Text('Custom Breathing')),
            for (final p in plans)
              DataCell(p.customBreathing
                  ? Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:p.title == 'Plus+' ? AppColors.primary : Colors.transparent
                ),
                child: Icon(
                  Icons.check,
                  color: p.title == 'Plus+'
                      ? AppColors.amber
                      : AppColors.vanillaWhite,
                ),
              )
                  : const Icon(null)),
          ]),
          DataRow(cells: [
            const DataCell(Text('Background Music')),
            for (final p in plans)
              DataCell(p.bgMusic
                  ? Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:p.title == 'Plus+' ? AppColors.primary : Colors.transparent,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )
                ),
                child: Icon(
                  Icons.check,
                  color: p.title == 'Plus+'
                      ? AppColors.amber
                      : AppColors.vanillaWhite,
                ),
              )
                  : const Icon(null)),
          ]),
        ],
      ),
    );
  }
}
