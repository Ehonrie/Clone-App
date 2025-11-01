import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class JambNovelView extends StatefulWidget {
  const JambNovelView({super.key});

  @override
  State<JambNovelView> createState() => _JambNovelViewState();
}

class _JambNovelViewState extends State<JambNovelView> {
  int currentPage = 0; // start from first page
  final int totalPages = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                Icon(Icons.info_outline),
                10.toRowSizedBox(),
                Icon(Icons.save_as_outlined),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (currentPage == 0) ...[
              Text(
                "Chapter 1: The Letter",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "SWEET SIXTEEN",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Text(
                "Aliya is the lead character in the novel Sweet Sixteen. Although chubby in size, she hates to be called fat and as described in the book, was already a size 16 by age 14 and was already wearing bras by age 10. She would always protest that she was not a child but an adult trapped in a child's body. Her father disagreed to this but young adult seemed a fair compromise for both parties.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              Text(
                "Aliya was the only child of her parents. Her mother was a nurse and her father, Mr. Bello had done several jobs but he was a journalist at the time she was born. He also worked as a Public Relations Officer when she was in primary school before he went on to work with an international organisation that helped poor Africans still as some kind of public relations officer.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              Text(
                "Aliya’s mother liked to celebrate birthdays before she got married to her husband who believed in celebrating only major achievements and he didn’t regard a birthday as such. It was quite surprising to Aliya when she left home for boarding school and her father never failed to send her greeting cards on her birthdays. When she was in JSS1 and turned 12, her father sent her a card in which he wrote Happy Birthday, my first Lady. Remember that only God is greater than you. She didn’t understand the statement “only God is greater than you” but it made her feel important like God’s deputy.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
            ] else if (currentPage == 1) ...[
              Text(
                "Chapter 2: The Dream",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "SWEET SIXTEEN",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Text(
                "Aliya is the lead character in the novel Sweet Sixteen. Although chubby in size, she hates to be called fat and as described in the book, was already a size 16 by age 14 and was already wearing bras by age 10. She would always protest that she was not a child but an adult trapped in a child's body. Her father disagreed to this but young adult seemed a fair compromise for both parties.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              Text(
                "Aliya was the only child of her parents. Her mother was a nurse and her father, Mr. Bello had done several jobs but he was a journalist at the time she was born. He also worked as a Public Relations Officer when she was in primary school before he went on to work with an international organisation that helped poor Africans still as some kind of public relations officer.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              Text(
                "Aliya’s mother liked to celebrate birthdays before she got married to her husband who believed in celebrating only major achievements and he didn’t regard a birthday as such. It was quite surprising to Aliya when she left home for boarding school and her father never failed to send her greeting cards on her birthdays. When she was in JSS1 and turned 12, her father sent her a card in which he wrote Happy Birthday, my first Lady. Remember that only God is greater than you. She didn’t understand the statement “only God is greater than you” but it made her feel important like God’s deputy.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
            ] else ...[
              Text(
                "Chapter 3: The Vision",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                "SWEET SIXTEEN",
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Text(
                "Aliya is the lead character in the novel Sweet Sixteen. Although chubby in size, she hates to be called fat and as described in the book, was already a size 16 by age 14 and was already wearing bras by age 10. She would always protest that she was not a child but an adult trapped in a child's body. Her father disagreed to this but young adult seemed a fair compromise for both parties.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              Text(
                "Aliya was the only child of her parents. Her mother was a nurse and her father, Mr. Bello had done several jobs but he was a journalist at the time she was born. He also worked as a Public Relations Officer when she was in primary school before he went on to work with an international organisation that helped poor Africans still as some kind of public relations officer.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
              Text(
                "Aliya’s mother liked to celebrate birthdays before she got married to her husband who believed in celebrating only major achievements and he didn’t regard a birthday as such. It was quite surprising to Aliya when she left home for boarding school and her father never failed to send her greeting cards on her birthdays. When she was in JSS1 and turned 12, her father sent her a card in which he wrote Happy Birthday, my first Lady. Remember that only God is greater than you. She didn’t understand the statement “only God is greater than you” but it made her feel important like God’s deputy.\n\n",
                style: Theme.of(context).textTheme.myTitleStyle5,
              ),
            ],
          ],
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
          // spacing: 5.w,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
              width: 180.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text(
                  "Table of Content",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: currentPage == 0
                  ? null
                  : () {
                      setState(() {
                        currentPage--;
                      });
                    },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                width: 100.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: currentPage == 0
                      ? Colors.grey.withValues(alpha: .3)
                      : AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Prev",
                    style: TextStyle(
                      color: currentPage == 0 ? Colors.grey : AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: currentPage == totalPages - 1
                  ? null
                  : () {
                      setState(() {
                        currentPage++;
                      });
                    },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                width: 100.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: currentPage == totalPages - 1
                      ? Colors.grey.withValues(alpha: .3)
                      : AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: currentPage == totalPages - 1
                          ? Colors.grey
                          : AppColors.white,
                    ),
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
