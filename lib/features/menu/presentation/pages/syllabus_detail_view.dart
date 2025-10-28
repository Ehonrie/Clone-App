import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color.dart';
import '../../../authentication/presentation/widgets/build_toogle_view.dart';
import '../widgets/more_details.dart';
import '../widgets/topics_widgets.dart';

class SyllabusDetailView extends StatefulWidget {
  final String title;

  const SyllabusDetailView({super.key, required this.title});

  @override
  State<SyllabusDetailView> createState() => _SyllabusDetailViewState();
}

class _SyllabusDetailViewState extends State<SyllabusDetailView> {
  bool isTopic = true;

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
                "SYLLABUS DETAILS ON",
                style: Theme.of(
                  context,
                ).textTheme.myTitleStyle1.copyWith(color: Colors.black),
              ),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.myBodyStyle,
              ),
              27.toColumnSizedBox(),
              Center(
                child: Container(
                  width: 370.w,
                  height: 54.4.h,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildToggleButton(context, "Topics", isTopic, () {
                        setState(() => isTopic = true);
                      }),
                      buildToggleButton(context, "More Detail", !isTopic, () {
                        setState(() => isTopic = false);
                      }),
                    ],
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(0.0, 0.0),
                      end: Offset(0, 0),
                    ).animate(animation),
                    child: FadeTransition(opacity: animation, child: child),
                  );
                },
                child: isTopic
                    ? _buildTopicForm(key: ValueKey("topic"))
                    : _buildMoreDetailsForm(key: ValueKey("more")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopicForm({required Key key}) {
    return TopicsWidgets(
      // onSignUpTap: () {
      //   setState(() => isReg = false); // 👈 switch to Sign Up
      // },
    );
  }

  Widget _buildMoreDetailsForm({required Key key}) {
    return MoreDetails(
      //   onLoginTap: () {
      //     setState(() => isReg = true); // toggle back to Sign In
      //   },
    );
  }
}
