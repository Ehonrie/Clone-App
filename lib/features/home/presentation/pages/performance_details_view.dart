import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import 'performance_widget.dart';

class PerformanceDetailsView extends StatefulWidget {
  const PerformanceDetailsView({super.key});

  @override
  State<PerformanceDetailsView> createState() => _PerformanceDetailsViewState();
}

class _PerformanceDetailsViewState extends State<PerformanceDetailsView> {
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
              "PERFORMANCE DETAILS PAGE",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "View detailed Report of your Performance",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date Taken",
                  style: Theme.of(
                    context,
                  ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
                ),
                Text(
                  " 24 Apr, 2025 06:03 PM",
                  style: Theme.of(context).textTheme.myBodyStyle4,
                ),
              ],
            ),
            12.toColumnSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PerformanceCard(
                  title: "Questions",
                  caption: "Total Questions",
                  value: "40",
                ),
                PerformanceCard(
                  title: "Subject",
                  caption: "Total Subjects",
                  value: "1",
                ),
              ],
            ),
            17.toColumnSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PerformanceCard(
                  title: "Total Score",
                  caption: "Overall Score(%)",
                  value: "87%",
                ),
                PerformanceCard(
                  title: "Duration",
                  caption: "Overall Duration",
                  value: "00h 07m",
                ),
              ],
            ),
            25.toColumnSizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mathematics",
                  style: Theme.of(
                    context,
                  ).textTheme.myBodyStyle4.copyWith(color: AppColors.primary),
                ),
                5.toColumnSizedBox(),
                Container(width: 100.w, height: 5.h, color: AppColors.primary),
              ],
            ),
            17.toColumnSizedBox(),
            Container(
              padding: EdgeInsets.all(17.sp),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubjectDetails(title: "Subject Name", value: "Mathematics"),
                  Divider(),
                  SubjectDetails(title: "Total Question", value: "40"),
                  Divider(),
                  SubjectDetails(title: "Year Attempted", value: "2024"),
                  Divider(),
                  SubjectDetails(title: "Total Percent Score", value: "87%"),
                  Divider(),
                  SubjectDetails(
                    title: "Total Attempted Questions",
                    value: "40",
                  ),
                  Divider(),
                  SubjectDetails(
                    title: "Total Un-Attempted Questions",
                    value: "Mathematics",
                  ),
                  Divider(),
                  SubjectDetails(title: "Total Correct", value: "35"),
                  Divider(),
                  SubjectDetails(title: "Total In-Correct", value: "5"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectDetails extends StatelessWidget {
  final String title, value;
  const SubjectDetails({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
        ),
        Text(value, style: Theme.of(context).textTheme.myBodyStyle4),
      ],
    );
  }
}
