import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/color.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NovelView extends StatefulWidget {
  const NovelView({super.key});

  @override
  State<NovelView> createState() => _NovelViewState();
}

class _NovelViewState extends State<NovelView> {
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
              50.toColumnSizedBox(),
              Text(
                "SELECTED NOVEL",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "ACCESS ALL THE SELECTED NOVEL FOR JAMB",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: double.infinity,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4.r,
                      offset: Offset(1, 1),
                      spreadRadius: 0.5.r,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.toColumnSizedBox(),
                        Text(
                          "Saved Novels",
                          style: Theme.of(context).textTheme.myTitleStyle2
                              .copyWith(color: Colors.black),
                        ),
                        10.toColumnSizedBox(),
                        Text(
                          "Access all your saved novels",
                          style: Theme.of(context).textTheme.myBodyStyle4,
                        ),
                      ],
                    ),
                    Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(10.r),
                        ),
                        color: AppColors.primary,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.bookmark_added_sharp,
                          size: 40.sp,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "Jamb Prose - (3 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "African Prose - (4 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "Non - African Prose - (4 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "African Drama - (5 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "Non - African Drama - (4 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "Shakespearean Text - (1 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "African Poetry - (7 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
              27.toColumnSizedBox(),
              Text(
                "Non - African Poetry - (7 Novels)",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
              ),
              15.toColumnSizedBox(),
              SizedBox(
                height: 210.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  separatorBuilder: (BuildContext context, int index) =>
                      10.toRowSizedBox(),
                  itemBuilder: (BuildContext context, int index) {
                    return JambNovels();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JambNovels extends StatelessWidget {
  const JambNovels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 200.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.r,
            offset: Offset(1, 1),
            spreadRadius: 0.5.r,
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150.w,
            height: 140.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
              color: AppColors.primary,
            ),
            child: Center(
              child: Text(
                "Novel\nImage",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle4.copyWith(color: Colors.white),
              ),
            ),
          ),
          5.toColumnSizedBox(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book Title",
                  style: Theme.of(
                    context,
                  ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
                ),
                5.toColumnSizedBox(),
                Text(
                  "Authors Name",
                  style: Theme.of(
                    context,
                  ).textTheme.myBodyStyle4.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
