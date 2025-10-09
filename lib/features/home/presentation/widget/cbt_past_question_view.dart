import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class CbtPastQuestionView extends StatefulWidget {
  final List<String> selectedSubjects;
  const CbtPastQuestionView({super.key, required this.selectedSubjects});

  @override
  State<CbtPastQuestionView> createState() => _CbtPastQuestionViewState();
}

class _CbtPastQuestionViewState extends State<CbtPastQuestionView> {
  String selectedYear = '2024';
  String selectedTopic = 'All Topic';
  String selectedQuestionCount = '53';
  bool shuffleQuestion = false;

  final List<String> years = ['2024', '2023', '2022', '2021'];
  final List<String> topics = [
    'All Topic',
    'Grammar',
    'Comprehension',
    'Lexis',
  ];
  final List<String> questionCounts = ['10', '20', '30', '40', '53'];

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
              "PAST QUESTION OPTIONS",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "SELECT THE OPTIONS BELOW TO CONTINUE",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            Expanded(
              child: ListView.builder(
                itemCount: widget.selectedSubjects.length,
                itemBuilder: (context, index) {
                  final subject = widget.selectedSubjects[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: 16.w,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4.r,
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
                            subject,
                            style: Theme.of(context).textTheme.myTitleStyle4,
                          ),
                          Divider(),
                          10.toColumnSizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Year",
                                style: Theme.of(context).textTheme.myBodyStyle3
                                    .copyWith(color: Colors.black),
                              ),
                              SizedBox(
                                width: 250.w,
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.divider,
                                      ),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  value: selectedYear,
                                  items: years
                                      .map(
                                        (year) => DropdownMenuItem(
                                          value: year,
                                          child: Text(year),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) =>
                                      setState(() => selectedYear = value!),
                                ),
                              ),
                            ],
                          ),
                          10.toColumnSizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context).textTheme.myBodyStyle3
                                    .copyWith(color: Colors.black),
                              ),
                              SizedBox(
                                width: 250.w,
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.divider,
                                      ),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  value: selectedTopic,
                                  items: topics
                                      .map(
                                        (topic) => DropdownMenuItem(
                                          value: topic,
                                          child: Text(topic),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) =>
                                      setState(() => selectedTopic = value!),
                                ),
                              ),
                            ],
                          ),
                          10.toColumnSizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "No. of\nQuestions",
                                style: Theme.of(context).textTheme.myBodyStyle3
                                    .copyWith(color: Colors.black),
                              ),
                              SizedBox(
                                width: 250.w,
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.divider,
                                      ),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  value: selectedQuestionCount,
                                  items: questionCounts
                                      .map(
                                        (count) => DropdownMenuItem(
                                          value: count,
                                          child: Text(count),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) => setState(
                                    () => selectedQuestionCount = value!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          10.toColumnSizedBox(),
                          CheckboxListTile(
                            title: const Text('Shuffle Question'),
                            value: shuffleQuestion,
                            onChanged: (value) =>
                                setState(() => shuffleQuestion = value!),
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () {}, // 👈 disables when no selection
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20), // rounded card style
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4.r,
                offset: Offset(1, 1),
                spreadRadius: 0.5.r,
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.primary,

              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Center(
              child: Text("Procced", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
