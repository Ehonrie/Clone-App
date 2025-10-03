import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    
    primaryColor: AppColors.primary,
    textTheme: GoogleFonts.poppinsTextTheme(),
    listTileTheme: ListTileThemeData(
      textColor: AppColors.black, // Set the title text color to white
    ),
    scaffoldBackgroundColor: AppColors.white,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.primary, // Change to the color you want
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      elevation: 0,
      shadowColor: AppColors.white,
      surfaceTintColor: Colors.transparent
    ),
  );
}