import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/routes/manager.dart';
import 'package:clone_app/core/theme/color.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/home_view.dart';
// import 'home_view.dart';

class PerformanceWidget extends StatefulWidget {
  const PerformanceWidget({super.key});

  @override
  State<PerformanceWidget> createState() => _PerformanceWidgetState();
}

class _PerformanceWidgetState extends State<PerformanceWidget> {
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
                "PERFORMANCE RECORD",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "TRACK YOUR PERFORMANCE RECORD",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              17.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PerformanceCard(
                    title: "Avg Score",
                    caption: "Overall Average score",
                    value: "20.48",
                  ),
                  PerformanceCard(
                    title: "NO. of CBT",
                    caption: "Total score",
                    value: "27",
                  ),
                ],
              ),
              12.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PerformanceCard(
                    title: "Duration",
                    caption: "Overall Test Duration",
                    value: "02h 33m",
                  ),
                  PerformanceCard(
                    title: "Avg. Duration",
                    caption: "Average Test Duration",
                    value: "00h 5.67m",
                  ),
                ],
              ),
              12.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PerformanceCard(
                    title: "Best Subject",
                    caption: "Best Performed Subject",
                    value: "Mathematics",
                  ),
                  PerformanceCard(
                    title: "Least Subject",
                    caption: "Least Performed Subject",
                    value: "Mathematics",
                  ),
                ],
              ),
              27.toColumnSizedBox(),
              Text(
                "Performance Records",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              12.toColumnSizedBox(),
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
                    // PerformanceRecordsHistory()
                    ListView.separated(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 15,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(color: AppColors.divider);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return PerformanceRecordsHistory();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PerformanceRecordsHistory extends StatelessWidget {
  const PerformanceRecordsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () =>
          Navigator.pushNamed(context, RoutesManager.performanceDetailsRoute),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LfxStamp(),
          10.toRowSizedBox(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#EXAM 1",
                      style: Theme.of(
                        context,
                      ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
                    ),
                    Text(
                      "Total Score: 87%",
                      style: Theme.of(
                        context,
                      ).textTheme.myBodyStyle.copyWith(color: Colors.black),
                    ),
                    Text(
                      "Taken on: 24 Apr, 2025 06:03 PM",
                      style: Theme.of(context).textTheme.myBodyStyle2,
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.text,
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PerformanceCard extends StatelessWidget {
  final String title, caption, value;
  const PerformanceCard({
    super.key,
    required this.title,
    required this.caption,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      width: 195.w,
      height: 120.h,
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
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.myTitleStyle4.copyWith(color: Colors.black),
          ),
          5.toColumnSizedBox(),
          Text(
            caption,
            style: Theme.of(
              context,
            ).textTheme.myBodyStyle.copyWith(color: AppColors.text),
          ),
          5.toColumnSizedBox(),
          Text(
            value,
            overflow: TextOverflow.ellipsis, // 👈 adds "..."
            maxLines: 1, // 👈 keeps it to one line
            softWrap: false,
            style: Theme.of(context).textTheme.myTitleStyle3,
          ),
        ],
      ),
    );
  }
}
