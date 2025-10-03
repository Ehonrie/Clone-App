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
}
