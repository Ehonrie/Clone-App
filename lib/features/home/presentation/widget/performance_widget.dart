import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:clone_app/features/home/presentation/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PerformanceWidget extends StatefulWidget {
  const PerformanceWidget({super.key});

  @override
  State<PerformanceWidget> createState() => _PerformanceWidgetState();
}

class _PerformanceWidgetState extends State<PerformanceWidget> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.35, // Controls the default height
      minChildSize: 0.35, // Minimum height when collapsed
      maxChildSize: 0.0,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 24.h),
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(color: Colors.white),
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
                  Container(
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
                              "UPDATE APP CONTENT",
                              style: Theme.of(context).textTheme.myTitleStyle2
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              "Click here to check for update on your app",
                              style: Theme.of(context).textTheme.myBodyStyle2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  15.toColumnSizedBox(),
                  Container(
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
                              "UPDATE APP CONTENT",
                              style: Theme.of(context).textTheme.myTitleStyle2
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              "Click here to check for update on your app",
                              style: Theme.of(context).textTheme.myBodyStyle2,
                            ),
                          ],
                        ),
                      ],
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
