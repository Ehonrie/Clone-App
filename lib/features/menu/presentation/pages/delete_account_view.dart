import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class DeleteAccountView extends StatefulWidget {
  const DeleteAccountView({super.key});

  @override
  State<DeleteAccountView> createState() => _DeleteAccountViewState();
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            4.toColumnSizedBox(),
            Text(
              "Delete Account Confirmation",
              style: Theme.of(context).textTheme.myTitleStyle4,
            ),

            15.toColumnSizedBox(),
            Text(
              "Are you sure you want to Delete Account?",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.myTitleStyle5,
            ),
            16.toColumnSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.border,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 40.w,
                      ),
                      child: Text(
                        "No, Cancel",
                        style: Theme.of(
                          context,
                        ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                15.toRowSizedBox(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 40.w,
                    ),
                    child: Text(
                      "Yes, Delete",
                      style: Theme.of(
                        context,
                      ).textTheme.myTitleStyle2.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}