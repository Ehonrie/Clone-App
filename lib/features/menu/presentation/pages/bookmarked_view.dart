import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import '../../../../gen/assets.gen.dart';

class BookmarkedView extends StatefulWidget {
  const BookmarkedView({super.key});

  @override
  State<BookmarkedView> createState() => _BookmarkedViewState();
}

class _BookmarkedViewState extends State<BookmarkedView> {
  String selectedSubject = 'All Subjects';

  final List<String> subjects = [
    'All Subjects',
    'Mathematics',
    'English Language',
    'Biology',
    'Agricultural Science',
    'Physics',
  ];

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
              "BOOKMARKED QUESTION",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "ACCESS ALL QUESTION YOU BOOKMARKED",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            Text(
              "Select Course Code",
              style: Theme.of(
                context,
              ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
            ),
            10.toColumnSizedBox(),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.divider),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              value: selectedSubject,
              items: subjects
                  .map(
                    (subject) =>
                        DropdownMenuItem(value: subject, child: Text(subject)),
                  )
                  .toList(),
              onChanged: (value) => setState(() => selectedSubject = value!),
            ),
            30.toColumnSizedBox(),
            Center(child: Assets.images.emptyBox.image()),
            Center(
              child: Text(
                "You have not bookmarked any question for the selected course yet",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.myBodyStyle3.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
