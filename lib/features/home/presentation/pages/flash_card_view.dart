import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import 'summary_note_view.dart';

class FlashCardView extends StatefulWidget {
  const FlashCardView({super.key});

  @override
  State<FlashCardView> createState() => _FlashCardViewState();
}

class _FlashCardViewState extends State<FlashCardView> {
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
              "Flash Card",
              style: Theme.of(
                context,
              ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
            ),
            Text(
              "SELECT ANY SUBJECT YOU WISH TO VIEW FROM",
              style: Theme.of(context).textTheme.myBodyStyle,
            ),
            27.toColumnSizedBox(),
            SubjectPreference(logo: "E", title: "ENGLISH LANGUAGE"),
            5.toColumnSizedBox(),
            SubjectPreference(logo: "M", title: "MATHEMATICS"),
            5.toColumnSizedBox(),
            SubjectPreference(logo: "C", title: "CHEMISTRY"),
            5.toColumnSizedBox(),
            SubjectPreference(logo: "B", title: "BIOLOGY"),
            5.toColumnSizedBox(),
            SubjectPreference(logo: "P", title: "PHYSICS"),
            5.toColumnSizedBox(),
            SubjectPreference(logo: "A", title: "AGRICULTURAL SCIENCE"),
            5.toColumnSizedBox(),
            SubjectPreference(
              logo: "C",
              title: "CHRISTIAN RELIGIOUS KNOWLEDGE",
            ),
          ],
        ),
      ),
    );
  }
}
