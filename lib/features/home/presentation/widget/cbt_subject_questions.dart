import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class CbtSubjectQuestions extends StatefulWidget {
  const CbtSubjectQuestions({super.key});

  @override
  State<CbtSubjectQuestions> createState() => _CbtSubjectQuestionsState();
}

class _CbtSubjectQuestionsState extends State<CbtSubjectQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("English Language"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                Icon(Icons.calculate_outlined),
                10.toRowSizedBox(),
                Icon(Icons.menu),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Question 1 of 53",
                        style: Theme.of(
                          context,
                        ).textTheme.myTitleStyle2.copyWith(color: Colors.black),
                      ),
                      Text(
                        "No time set",
                        style: Theme.of(
                          context,
                        ).textTheme.myBodyStyle1.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.primary,
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: Theme.of(
                          context,
                        ).textTheme.myBodyStyle1.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              20.toColumnSizedBox(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                width: 179.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(color: AppColors.primary, width: 3),
                  ),
                ),
                child: Center(
                  child: Text(
                    "English Language",
                    style: Theme.of(context).textTheme.myTitleStyle4.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              20.toColumnSizedBox(),
              CbtQestionTab(),
              CbtQestionTab(),
              CbtQestionTab(),
              CbtQestionTab(), 
            ],
          ),
        ),
      ),
    );
  }
}

class CbtQestionTab extends StatelessWidget {
  const CbtQestionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.r,
              offset: Offset(1, 1),
              spreadRadius: 0.5.r,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question Instruction",
              style: Theme.of(context).textTheme.myTitleStyle4,
            ),
            Text(
              "Choose the option that best completes the gap(s)....",
              style: Theme.of(context).textTheme.myBodyStyle5,
            ),
            4.toColumnSizedBox(),
            Text(
              "Question 1",
              style: Theme.of(context).textTheme.myTitleStyle4,
            ),

            10.toColumnSizedBox(),
            ExamOptionTab(option: "A", text: "would you"),
            ExamOptionTab(option: "B", text: " wouldn't you"),
            ExamOptionTab(option: "C", text: "did you"),
            ExamOptionTab(option: "D", text: "didn't you"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lexis 2004",
                  style: Theme.of(context).textTheme.myBodyStyle2.copyWith(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.flag_outlined),
                    5.toRowSizedBox(),
                    Icon(Icons.book_outlined),
                  ],
                ),
              ],
            ),
            20.toColumnSizedBox(),
          ],
        ),
      ),
    );
  }
}

class ExamOptionTab extends StatelessWidget {
  final String option, text;
  const ExamOptionTab({super.key, required this.option, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        padding: EdgeInsets.all(10.sp),
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  option,
                  style: Theme.of(
                    context,
                  ).textTheme.myBodyStyle5.copyWith(color: Colors.white),
                ),
              ),
            ),
            10.toRowSizedBox(),
            Text(text, style: Theme.of(context).textTheme.myBodyStyle5),
          ],
        ),
      ),
    );
  }
}
