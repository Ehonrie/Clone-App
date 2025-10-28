import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';

class TopicObjective extends StatefulWidget {
  const TopicObjective({super.key});

  @override
  State<TopicObjective> createState() => _TopicObjectiveState();
}

class _TopicObjectiveState extends State<TopicObjective> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.toColumnSizedBox(),
        Text(
          "Topic Objective",
          style: Theme.of(context).textTheme.myTitleStyle5,
        ),
        5.toColumnSizedBox(),
        Text(
          "Candidates should be able to:\n\n(i) identify main points/topic sentences in passages;\n\n(ii) determine implied meanings;\n\n(iii) identify the grammatical functions of words, phrases, clauses and figurative idiomatic expressions; and\n\n(iv) deduce or infer the writer’s intentions including mood, attitude to the subject matter and opinion",
          style: Theme.of(context).textTheme.myBodyStyle,
        ),
      ],
    );
  }
}
