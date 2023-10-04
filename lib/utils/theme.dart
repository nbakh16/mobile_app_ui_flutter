import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme{

  ThemeData appThemeData() {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.primary,
        dataTableTheme: DataTableThemeData(
          dividerThickness: 1.25,
          columnSpacing: 16,
          decoration: BoxDecoration(
            color: AppColors.primaryAccent,
            borderRadius: BorderRadius.circular(14.0),
          ),
          headingTextStyle: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              color: AppColors.vanillaWhite
          ),
          dataTextStyle: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.vanillaWhite
          ),
        ),
        textTheme: GoogleFonts.robotoTextTheme(
            const TextTheme(
                titleLarge: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.85,
                    color: AppColors.vanillaWhite
                ),
                bodyMedium: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: AppColors.vanillaWhite
                ),
                bodySmall: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: AppColors.vanillaWhite
                )
            )
        )
    );
  }
}