import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import '../widget/cbt_past_question_view.dart';
import 'summary_note_view.dart';

class CbtExamModeView extends StatefulWidget {
  const CbtExamModeView({super.key});

  @override
  State<CbtExamModeView> createState() => _CbtExamModeViewState();
}

class _CbtExamModeViewState extends State<CbtExamModeView> {
  final Set<String> selectedSubjects = {};

  final List<Map<String, String>> subjects = [
    {"logo": "E", "title": "ENGLISH LANGUAGE"},
    {"logo": "M", "title": "MATHEMATICS"},
    {"logo": "C", "title": "CHEMISTRY"},
    {"logo": "B", "title": "BIOLOGY"},
    {"logo": "P", "title": "PHYSICS"},
    {"logo": "A", "title": "AGRICULTURAL SCIENCE"},
    {"logo": "C", "title": "CHRISTIAN RELIGIOUS KNOWLEDGE"},
  ];

  void toggleSelection(String subjectTitle) {
    setState(() {
      if (selectedSubjects.contains(subjectTitle)) {
        selectedSubjects.remove(subjectTitle); // uncheck
      } else {
        selectedSubjects.add(subjectTitle); // check
      }
    });
  }

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
              "EXAMINE YOURSELF",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "SELECT A SUBJECT YOU WISH TO STUDY",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: subjects.map((subject) {
                    final isSelected = selectedSubjects.contains(
                      subject['title'],
                    );
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: GestureDetector(
                        onTap: () => toggleSelection(subject['title']!),
                        child: SubjectPreference(
                          logo: subject['logo']!,
                          title: subject['title']!,
                          icon: Icon(
                            isSelected
                                ? Icons.check_box_rounded
                                : Icons.download_rounded,
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.text,
                          ),
                          isSelected: isSelected,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: selectedSubjects.isEmpty
            ? null
            : () {
                // 👇 navigate when a subject is selected
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CbtPastQuestionView(
                      selectedSubjects: selectedSubjects.toList(),
                    ),
                  ),
                );
              },
        // : null, // 👈 disables when no selection
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
              color: selectedSubjects.isNotEmpty
                  ? AppColors.primary
                  : Colors.grey.shade400, // 👈 disabled color
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
