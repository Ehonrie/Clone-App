import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

extension CustomTextStyles on TextTheme {
  TextStyle get myBodyStyle =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400);

  TextStyle get myBodyStyle1 => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  TextStyle get myBodyStyle2 => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  TextStyle get myBodyStyle3 => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  TextStyle get myBodyStyle4 => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  TextStyle get myTitleStyle => TextStyle(
    fontSize: 60.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
  );

  TextStyle get myTitleStyle1 => TextStyle(
    fontSize: 32.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  TextStyle get myTitleStyle2 => TextStyle(
    fontSize: 15.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  TextStyle get myTitleStyle3 =>
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700);

  TextStyle get myTitleStyle4 => TextStyle(
    fontSize: 18.sp,
    // color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  TextStyle get myTitleStyle5 => TextStyle(
    fontSize: 16.sp,
    // color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}
