import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/routes/manager.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:clone_app/features/home/presentation/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';

class PastQuestionWidget extends StatefulWidget {
  const PastQuestionWidget({super.key});

  @override
  State<PastQuestionWidget> createState() => _PastQuestionWidgetState();
}

class _PastQuestionWidgetState extends State<PastQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3, // Controls the default height
      minChildSize: 0.3, // Minimum height when collapsed
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 24.h),
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(color: AppColors.background),
            child: SingleChildScrollView(
              controller: scrollController,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  20.toColumnSizedBox(),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      RoutesManager.studyModeRoute,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(17.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LfxStamp(),
                          10.toRowSizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STUDY MODE",
                                style: Theme.of(context).textTheme.myTitleStyle2
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "Study older past questions",
                                style: Theme.of(context).textTheme.myBodyStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  15.toColumnSizedBox(),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      RoutesManager.cbtExamRoute,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(17.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LfxStamp(),
                          10.toRowSizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CBT/EXAM MODE",
                                style: Theme.of(context).textTheme.myTitleStyle2
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "Test yourself with real exam situations",
                                style: Theme.of(context).textTheme.myBodyStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
