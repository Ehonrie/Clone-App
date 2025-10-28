import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/routes/manager.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class SummaryTopics extends StatefulWidget {
  final String title;
  const SummaryTopics({super.key, required this.title});

  @override
  State<SummaryTopics> createState() => _SummaryTopicsState();
}

class _SummaryTopicsState extends State<SummaryTopics> {
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
              "TOPIC ON",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(widget.title, style: Theme.of(context).textTheme.myBodyStyle),
            27.toColumnSizedBox(),
            NoteTopics(),
            NoteTopics(),
            NoteTopics(),
            NoteTopics(),
            NoteTopics(),
          ],
        ),
      ),
    );
  }
}

class NoteTopics extends StatelessWidget {
  const NoteTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.noteRoute);
        },
        child: Container(
          padding: EdgeInsets.all(15.sp),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Topic #",
                    style: Theme.of(context).textTheme.myTitleStyle5,
                  ),
                  Text(
                    "TOPIC TITLE",
                    style: Theme.of(context).textTheme.myBodyStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
