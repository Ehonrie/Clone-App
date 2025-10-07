import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:clone_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class ActivateAppView extends StatefulWidget {
  const ActivateAppView({super.key});

  @override
  State<ActivateAppView> createState() => _ActivateAppViewState();
}

class _ActivateAppViewState extends State<ActivateAppView> {
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
              "Activate App",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "ACCESS APP MENU AND MORE FEATURES",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            74.toColumnSizedBox(),
            Center(child: Assets.images.lockIcon.image(width: 200.w)),
            35.toColumnSizedBox(),
            Center(
              child: Text(
                "App Activated",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle4.copyWith(color: Colors.black),
              ),
            ),
            13.toColumnSizedBox(),
            Center(
              child: Text(
                "Your app is fully activated, thus full access to\nall features",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
