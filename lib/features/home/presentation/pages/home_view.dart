import 'package:carousel_slider/carousel_slider.dart';
import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/color.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../widget/performance_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<String> imageList = [
    Assets.images.slideImage.path,
    Assets.images.slideImage.path,
    Assets.images.slideImage.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.toColumnSizedBox(),
              Text(
                "Hi, Anthony",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "Ready to learn and study today?",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              17.toColumnSizedBox(),
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  height: 128.0.h,
                  autoPlay: true,
                  disableCenter: true,
                  viewportFraction: 1,
                  padEnds: false,
                  autoPlayInterval: Duration(seconds: 3),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imageList
                    .map((item) => Image.asset(item, fit: BoxFit.fill))
                    .toList(),
              ),
              24.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActions(
                    icon: Assets.icons.summary.svg(),
                    title: "Summary",
                    title1: "Note",
                    onTap: () {},
                  ),
                  QuickActions(
                    icon: Assets.icons.tutorial.svg(),
                    title: "Post ",
                    title1: "Tutorial",
                    onTap: () {},
                  ),
                  QuickActions(
                    icon: Assets.icons.jamb.svg(),
                    title: "JAMB Past",
                    title1: "Questions",
                    onTap: () {},
                  ),
                ],
              ),
              12.toColumnSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActions(
                    icon: Assets.icons.flash.svg(),
                    color: Colors.redAccent,
                    title: "Flash",
                    title1: "Cards",
                    onTap: () {},
                  ),
                  QuickActions(
                    icon: Assets.icons.record.svg(),
                    title: "Performance",
                    title1: "Records",
                    onTap: () => showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return PerformanceWidget();
                      },
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      isDismissible: true,
                    ),
                  ),
                  QuickActions(
                    icon: Assets.icons.pin.svg(),
                    title: "Activate",
                    title1: "Course",
                    onTap: () {},
                  ),
                ],
              ),
              24.toColumnSizedBox(),
              Container(
                padding: EdgeInsets.all(17.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),
                      blurRadius: 1.0.r,
                      offset: Offset(1, 1),
                      spreadRadius: 0.5.r,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Assets.icons.update.svg(),
                    10.toRowSizedBox(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "UPDATE APP CONTENT",
                          style: Theme.of(context).textTheme.myTitleStyle2
                              .copyWith(color: Colors.black),
                        ),
                        Text(
                          "Click here to check for update on your app",
                          style: Theme.of(context).textTheme.myBodyStyle2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "General Information",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              12.toColumnSizedBox(),
              Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GeneralInfo(),
                    Divider(color: AppColors.divider),
                    GeneralInfo(),
                    Divider(color: AppColors.divider),
                    GeneralInfo(),
                    Divider(color: AppColors.divider),
                    GeneralInfo(),
                    Divider(color: AppColors.divider),
                  ],
                ),
              ),
              12.toColumnSizedBox(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                width: 120.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "View More",
                    style: Theme.of(context).textTheme.myBodyStyle3,
                  ),
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "Special Information",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              12.toColumnSizedBox(),
              Container(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [GeneralInfo()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class LfxStamp extends StatelessWidget {
  const LfxStamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.primary,
      ),
      child: Center(
        child: Text(
          "LFX",
          style: Theme.of(
            context,
          ).textTheme.myTitleStyle3.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class QuickActions extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String title1;
  final Widget icon;
  final Color? color;
  const QuickActions({
    super.key,
    required this.title,
    required this.icon,
    required this.title1,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.sp),
        width: 125.w,
        height: 150.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: 1.0.r,
              offset: Offset(1, 1),
              spreadRadius: 0.5.r,
            ),
          ],
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            17.toColumnSizedBox(),
            icon,
            14.toColumnSizedBox(),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.myBodyStyle.copyWith(color: Colors.white),
            ),
            10.toColumnSizedBox(),
            Text(
              title1,
              style: Theme.of(
                context,
              ).textTheme.myBodyStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
