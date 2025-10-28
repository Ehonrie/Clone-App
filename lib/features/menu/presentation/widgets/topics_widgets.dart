import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/toggle_widget.dart';
import 'sub_topic_widget.dart';
import 'topic_objective.dart';

class TopicsWidgets extends StatefulWidget {
  const TopicsWidgets({super.key});

  @override
  State<TopicsWidgets> createState() => _TopicsWidgetsState();
}

class _TopicsWidgetsState extends State<TopicsWidgets> {
  // final bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.toColumnSizedBox(),
        TopicsTabs(),
        TopicsTabs(),
        TopicsTabs(),
        TopicsTabs(),
        TopicsTabs(),
      ],
    );
  }
}

class TopicsTabs extends StatefulWidget {
  const TopicsTabs({super.key});

  @override
  State<TopicsTabs> createState() => _TopicsTabsState();
}

class _TopicsTabsState extends State<TopicsTabs> {
  bool _isExpanded = false;
  bool _isSubTopic = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            if (_isExpanded) ...[
              10.toColumnSizedBox(),
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
                      buildBorderToggleButton(
                        context,
                        "Sub Topics",
                        _isSubTopic,
                        () {
                          setState(() => _isSubTopic = true);
                        },
                      ),
                      buildBorderToggleButton(
                        context,
                        "Topic Objectives",
                        !_isSubTopic,
                        () {
                          setState(() => _isSubTopic = false);
                        },
                      ),
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
                child: _isSubTopic
                    ? _buildTopicForm(key: ValueKey("topic"))
                    : _buildMoreDetailsForm(key: ValueKey("objective")),
              ),
              // Text(
              //   "The aim of the Unified Tertiary Matriculation Examination (UTME) syllabus in Use of English is to guide candidates in their preparation for the Board's examination. It is designed to evaluate the candidates' ability to: \n(i) communicate effectively in both written and spoken English; and\n(ii) use English Language for learning at the tertiary level.",
              //   style: Theme.of(context).textTheme.myBodyStyle,
              // ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTopicForm({required Key key}) {
    return SubTopicWidget();
  }

  Widget _buildMoreDetailsForm({required Key key}) {
    return TopicObjective();
  }
}
