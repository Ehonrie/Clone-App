import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import '../../../home/presentation/pages/home_view.dart';

class GeneralInformationView extends StatefulWidget {
  const GeneralInformationView({super.key});

  @override
  State<GeneralInformationView> createState() => _GeneralInformationViewState();
}

class _GeneralInformationViewState extends State<GeneralInformationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.toColumnSizedBox(),
              Text(
                "GENERAL INFORMATION",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "STAY UPDATED WITH LATEST INFORMATION",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              ListView.separated(
                // scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) =>
                    10.toColumnSizedBox(),
                itemBuilder: (BuildContext context, int index) {
                  return GeneralInfoTabs();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GeneralInfoTabs extends StatelessWidget {
  const GeneralInfoTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(17.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .1),
            blurRadius: 1.0.r,
            offset: Offset(1, 1),
            spreadRadius: 0.5.r,
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LfxStamp(),
          10.toRowSizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, //
            children: [
              Text(
                "REAL PAST TIME QUESTIONS",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle4.copyWith(color: Colors.black),
              ),
              5.toColumnSizedBox(),
              Text(
                "Posted on: 23 Oct, 2025",
                style: Theme.of(context).textTheme.myBodyStyle2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
