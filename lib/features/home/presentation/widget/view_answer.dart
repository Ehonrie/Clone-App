import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class ViewAnswer extends StatefulWidget {
  const ViewAnswer({super.key});

  @override
  State<ViewAnswer> createState() => _ViewAnswerState();
}

class _ViewAnswerState extends State<ViewAnswer> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      backgroundColor: Colors.white,
      content: Container(
        // padding: EdgeInsets.all(20),
        // height: 165.h,
        decoration: BoxDecoration(
          color: Colors.white,
          // boxShadow:[

          //  BoxShadow(color: Colors.black.withValues(alpha:  0.1), spreadRadius: 3, blurRadius: 10),]
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            4.toColumnSizedBox(),
            Text(
              "Correct Answer",
              style: Theme.of(context).textTheme.myTitleStyle4,
            ),

            15.toColumnSizedBox(),
            Text(
              "The correct answer to the question is option A",
              // textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.myTitleStyle5,
            ),
            20.toColumnSizedBox(),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 35.w,
                  ),
                  child: Center(
                    child: Text(
                      "Close",
                      style: Theme.of(
                        context,
                      ).textTheme.myTitleStyle2.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
