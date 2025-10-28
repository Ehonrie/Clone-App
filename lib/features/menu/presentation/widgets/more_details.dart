import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        15.toColumnSizedBox(),
        MoreDetailsTab(
          icon: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(15),
            child: const Icon(Icons.menu_book, color: Colors.white),
          ),
          content: Text(
            "The aim of the Unified Tertiary Matriculation Examination (UTME) syllabus in Use of English is to guide candidates in their preparation for the Board's examination. It is designed to evaluate the candidates' ability to:\n\n"
            "(i) communicate effectively in both written and spoken English; and\n\n"
            "(ii) use English Language for learning at the tertiary level.",
            style: Theme.of(context).textTheme.myBodyStyle,
          ),
          title: "SUBJECT OBJECTIVE",
          caption: "View objectives for the selected subject.",
        ),
        10.toColumnSizedBox(),
        MoreDetailsTab(
          icon: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(15),
            child: const Icon(Icons.book, color: Colors.white),
          ),
          content: Text(
            "Adedimeji, M. A (2021) Doses of Grammar. Patigi: Ahman Pategi University Press.\n"
            "\nAttah, M. O. (2013).\nPractice in Spoken English for Intermediate and Advanced Learners. Maiduguri: University Maiduguri Press.\n\nBamgbose, A. (2002).\nEnglish Lexis and Structure for Senior Secondary Schools and Colleges (Revised Edition). Ibadan: Heinemann.\n\nBanjo, A., Adeniran, A., Akano, A. and Onoga, U. (2004).\nNew Oxford Secondary English Course Book Six for Senior Secondary Schools. Ibadan: University Press Plc.\n"
            "Caesar, O. J. (2003).\nEssential Oral English for Schools and Colleges. Lagos: Tonad Publishers Limited.",
            style: Theme.of(context).textTheme.myBodyStyle,
          ),
          title: "SELECTED TEXTBOOK",
          caption: "View selected textbook for this subject.",
        ),
      ],
    );
  }
}

class MoreDetailsTab extends StatefulWidget {
  final Widget icon, content;
  final String title, caption;
  const MoreDetailsTab({
    super.key,
    required this.icon,
    required this.content,
    required this.title,
    required this.caption,
  });

  @override
  State<MoreDetailsTab> createState() => _MoreDetailsTabState();
}

class _MoreDetailsTabState extends State<MoreDetailsTab> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget.icon,
              5.toRowSizedBox(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 240.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: Theme.of(context).textTheme.myTitleStyle5,
                          ),
                          Text(
                            widget.caption,
                            style: Theme.of(context).textTheme.myBodyStyle,
                          ),
                        ],
                      ),
                    ),
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
          if (_isExpanded) ...[15.toColumnSizedBox(), widget.content],
        ],
      ),
    );
  }
}
