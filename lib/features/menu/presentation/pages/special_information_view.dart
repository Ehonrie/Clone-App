import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import 'general_information_view.dart';

class SpecialInformationView extends StatefulWidget {
  const SpecialInformationView({super.key});

  @override
  State<SpecialInformationView> createState() => _SpecialInformationViewState();
}

class _SpecialInformationViewState extends State<SpecialInformationView> {
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
              "SPECIAL INFORMATION",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "STAY UPDATED WITH LATEST INFORMATION",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            GeneralInfoTabs(),
          ],
        ),
      ),
    );
  }
}
