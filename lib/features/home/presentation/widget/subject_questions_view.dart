import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/color.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_answer.dart';

class SubjectQuestionsView extends StatefulWidget {
  const SubjectQuestionsView({super.key});

  @override
  State<SubjectQuestionsView> createState() => _SubjectQuestionsViewState();
}

class _SubjectQuestionsViewState extends State<SubjectQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("English Language"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              QuestionTabs(),
              QuestionTabs(),
              QuestionTabs(),
              QuestionTabs(),
              QuestionTabs(),
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionTabs extends StatefulWidget {
  const QuestionTabs({super.key});

  @override
  State<QuestionTabs> createState() => _QuestionTabsState();
}

class _QuestionTabsState extends State<QuestionTabs> {
  bool _isExpanded = false;

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
            Text(
              "You'd rather not attend the meeting __\n"
              "a. would you\n"
              "b. wouldn't you\n"
              "c. did you\n"
              "d. didn't you",
              style: Theme.of(context).textTheme.myBodyStyle5,
            ),
            10.toColumnSizedBox(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierColor: Colors.black.withValues(alpha: .4),
                      builder: (context) {
                        return ViewAnswer();
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    width: 160.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.primary,
                    ),
                    child: Center(
                      child: Text(
                        "View Answer",
                        style: Theme.of(context).textTheme.myBodyStyle5
                            .copyWith(color: AppColors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    width: 160.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.primary,
                    ),
                    child: Center(
                      child: Text(
                        "View Correct",
                        style: Theme.of(context).textTheme.myBodyStyle5
                            .copyWith(color: AppColors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_isExpanded) ...[
              15.toColumnSizedBox(),
              Text(
                "Correction Below",
                style: Theme.of(context).textTheme.myTitleStyle4,
              ),
              Text(
                "The negative statement 'you'd rather not attend the meeting' requires a positive tag question: 'would you. Tag question invert the polarity of the statement, so 'wouldnt you' is correct here. the structure maintains agreement in tense and meaning.",
                style: Theme.of(context).textTheme.myBodyStyle5,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
