import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import '../../../menu/presentation/widgets/summary_topics.dart';

class SummaryNoteView extends StatefulWidget {
  const SummaryNoteView({super.key});

  @override
  State<SummaryNoteView> createState() => _SummaryNoteViewState();
}

class _SummaryNoteViewState extends State<SummaryNoteView> {
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
              "SUBJECT",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "SELECT ANY SUBJECT YOU WISH TO STUDY",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            SubjectPreference(
              logo: "E",
              title: "ENGLISH LANGUAGE",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SummaryTopics(title: 'ENGLISH LANGUAGE'),
                  ),
                );
              },
            ),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "M",
              title: "MATHEMATICS",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryTopics(title: 'MATHEMATICS'),
                  ),
                );
              },
            ),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "C",
              title: "CHEMISTRY",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryTopics(title: 'CHEMISTRY'),
                  ),
                );
              },
            ),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "B",
              title: "BIOLOGY",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryTopics(title: 'BIOLOGY'),
                  ),
                );
              },
            ),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "P",
              title: "PHYSICS",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryTopics(title: 'PHYSICS'),
                  ),
                );
              },
            ),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "A",
              title: "AGRICULTURAL SCIENCE",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SummaryTopics(title: 'AGRICULTURAL SCIENCE'),
                  ),
                );
              },
            ),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "C",
              title: "CHRISTIAN RELIGIOUS KNOWLEDGE",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SummaryTopics(title: 'CHRISTIAN RELIGIOUS KNOWLEDGE'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectPreference extends StatelessWidget {
  final String logo, title;
  final Widget? icon;
  final VoidCallback onTap;
  final bool isSelected;
  const SubjectPreference({
    super.key,
    required this.logo,
    required this.title,
    this.icon,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.primary,
              ),
              child: Center(
                child: Text(
                  logo,
                  style: Theme.of(
                    context,
                  ).textTheme.myTitleStyle3.copyWith(color: Colors.white),
                ),
              ),
            ),
            10.toRowSizedBox(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis, // 👈 adds "..."
                    maxLines: 1, // 👈 keeps it to one line
                    softWrap: false,
                    style: Theme.of(context).textTheme.myTitleStyle4,
                  ),
                  icon ??
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20.sp,
                        color: AppColors.text,
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
