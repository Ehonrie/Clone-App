import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class NoteWidget extends StatefulWidget {
  const NoteWidget({super.key});

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  int currentPage = 0; // start from first page
  final int totalPages = 3;
  bool _isExpanded = false;
  String selectedTopic = 'Comprehension';

  final List<String> topics = [
    'Comprehension',
    'Passage I',
    'Question (A)',
    'Question (B)',
  ];

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
                "NOTE ON",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "SELECTED TOPIC",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.divider),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                value: selectedTopic,
                items: topics
                    .map(
                      (topic) =>
                          DropdownMenuItem(value: topic, child: Text(topic)),
                    )
                    .toList(),
                onChanged: (value) => setState(() => selectedTopic = value!),
              ),
              20.toColumnSizedBox(),
              Text(
                "Comprehension",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              10.toColumnSizedBox(),
              Container(
                padding: EdgeInsets.all(10.sp),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 310.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Study Objective (from JAMB syllabus)",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.myTitleStyle5,
                                    ),
                                    Text(
                                      "Click to see what you are expected to learn after studying this summary",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.myBodyStyle,
                                    ),
                                  ],
                                ),
                              ),
                              // .toRowSizedBox(),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isExpanded = !_isExpanded;
                                  });
                                },
                                icon: Icon(
                                  _isExpanded
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (_isExpanded) ...[
                      15.toColumnSizedBox(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Objectives:\nCandidates should be able to:",
                            style: Theme.of(context).textTheme.myTitleStyle4,
                          ),
                          5.toColumnSizedBox(),
                          Text(
                            "(i) identify main points/topic sentences in passages;\n(ii) determine implied meanings;\n(iii) identify the grammatical functions of words, phrases, clauses and figurative idiomatic expressions; and\n(iv) deduce or infer the writer’s intentions including mood, attitude to the subject matter and opinion.",
                            style: Theme.of(context).textTheme.myBodyStyle,
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              10.toColumnSizedBox(),
              // Text(
              //   "Comprehension is a process of reading, understanding and interpretation of what is written in a passage. Its main aim is to test the student's understanding of a given passage.\nUseful hints on comprehension"
              //   "\n• Read the given passage carefully, interpret the contents of the message using your choice of words.\n• Your opinion should not affect your answer to the passage.\n• Comprehension tests your vocabulary, so building a good vocabulary is essential to understand passages."
              //   "\n• You need to develop the prowess to discover/identify the meanings of phrases or words by reading the passage multiple times.\n• You must learn to spell your words correctly and your grammar must be error-free too.",
              //   style: Theme.of(context).textTheme.myBodyStyle,
              // ),
              if (currentPage == 0) ...[
                Text(
                  "First Page\n"
                  "Comprehension is a process of reading, understanding and interpretation of what is written in a passage. Its main aim is to test the student's understanding of a given passage.\nUseful hints on comprehension"
                  "\n• Read the given passage carefully, interpret the contents of the message using your choice of words.\n• Your opinion should not affect your answer to the passage.\n• Comprehension tests your vocabulary, so building a good vocabulary is essential to understand passages."
                  "\n• You need to develop the prowess to discover/identify the meanings of phrases or words by reading the passage multiple times.\n• You must learn to spell your words correctly and your grammar must be error-free too.\n"
                  "First Page\n",
                  style: Theme.of(context).textTheme.myBodyStyle,
                ),
              ] else if (currentPage == 1) ...[
                Text(
                  "Second Page\n"
                  "Comprehension is a process of reading, understanding and interpretation of what is written in a passage. Its main aim is to test the student's understanding of a given passage.\nUseful hints on comprehension"
                  "\n• Read the given passage carefully, interpret the contents of the message using your choice of words.\n• Your opinion should not affect your answer to the passage."
                  "\n• You need to develop the prowess to discover/identify the meanings of phrases or words by reading the passage multiple times.\n• You must learn to spell your words correctly and your grammar must be error-free too.\n"
                  "Second Page\n",
                  // "last page",
                  style: Theme.of(context).textTheme.myBodyStyle,
                ),
              ] else ...[
                Text(
                  "Last Page\n"
                  "Comprehension is a process of reading, understanding and interpretation of what is written in a passage. Its main aim is to test the student's understanding of a given passage.\nUseful hints on comprehension"
                  "\n• Read the given passage carefully, interpret the contents of the message using your choice of words.\n• Your opinion should not affect your answer to the passage.\n• Comprehension tests your vocabulary, so building a good vocabulary is essential to understand passages."
                  "\n• You must learn to spell your words correctly and your grammar must be error-free too.\n"
                  "Last Page\n",
                  style: Theme.of(context).textTheme.myBodyStyle,
                ),
              ],
              100.toColumnSizedBox(),
              // Icon(Icons.menu_book_outlined, size: 200.sp),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120.w,
              child: ElevatedButton(
                onPressed: currentPage == 0
                    ? null
                    : () {
                        setState(() {
                          currentPage--;
                        });
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentPage == 0
                      ? Colors.grey
                      : AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Text(
                  "Previous",
                  style: Theme.of(context).textTheme.myBodyStyle.copyWith(
                    color: currentPage == 0 ? Colors.grey : AppColors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 120.w,
              child: ElevatedButton(
                onPressed: currentPage == totalPages - 1
                    ? null
                    : () {
                        setState(() {
                          currentPage++;
                        });

                        // Navigate to another route when last page is reached
                        // if (currentPage == totalPages - 1) {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (_) => const SomeNextPage(), // <-- your next page
                        //     ),
                        //   );
                        // }
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentPage == totalPages - 1
                      ? Colors.grey
                      : AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Text(
                  "Next",
                  style: Theme.of(context).textTheme.myBodyStyle.copyWith(
                    color: currentPage == totalPages - 1
                        ? Colors.grey
                        : AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
