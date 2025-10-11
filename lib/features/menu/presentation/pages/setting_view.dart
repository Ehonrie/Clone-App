import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  String selectedTheme = 'Auto';
  final List<String> themes = ['Auto', 'Light'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.toColumnSizedBox(),
            Text(
              "APP SETTINGS",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "CUSTOMISE YOUR APP SETTINGS",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            Container(
              padding: EdgeInsets.all(16.sp),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .1),
                    blurRadius: 1.0.r,
                    offset: Offset(1, 1),
                    spreadRadius: 0.5.r,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "App Theme",
                        style: Theme.of(context).textTheme.myTitleStyle3,
                      ),
                      10.toColumnSizedBox(),
                      Text(
                        "Customise your app theme",
                        style: Theme.of(
                          context,
                        ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130.w,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.divider),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      value: selectedTheme,
                      items: themes
                          .map(
                            (theme) => DropdownMenuItem(
                              value: theme,
                              child: Text(theme),
                            ),
                          )
                          .toList(),
                      onChanged: (value) =>
                          setState(() => selectedTheme = value!),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
