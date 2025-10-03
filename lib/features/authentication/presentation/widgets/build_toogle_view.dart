// import 'package:ekxpay/core/theme/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/theme/color.dart';

  Widget buildToggleButton(BuildContext context, String text, bool selected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 179.w,
          height: 42.4.h,
          // padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: selected ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.myTitleStyle2.copyWith(
                color: selected ? Colors.white : AppColors.grey,
                
              ),
            ),
          ),
        ),
      ),
    );
  }






