import 'package:clone_app/core/config/extention.dart';
import 'package:clone_app/core/theme/text_extention.dart';
import 'package:flutter/material.dart';

class SubTopicWidget extends StatefulWidget {
  const SubTopicWidget({super.key});

  @override
  State<SubTopicWidget> createState() => _SubTopicWidgetState();
}

class _SubTopicWidgetState extends State<SubTopicWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sub Topics", style: Theme.of(context).textTheme.myTitleStyle5),
        5.toColumnSizedBox(),
        Text(
          "(a) description\n(b) narration\n(c) exposition\n(d) argumentation/persuasion\n\n(i) Each of the three passages to be set (one will be a close test) should reflect various disciplines and be about 200 words long.\n\n(ii) Questions on the passages will test the following:\n(a) Comprehension of the whole or part of each passage.\n(b) Comprehension of words, phrases, clauses, sentences, figures of speech and idioms as used in the passages.\n(c) Coherence and logical reasoning (deductions, inferences, etc).\n(d) Approved Reading Text.\n(e) Synthesis of ideas from the passages.",
          style: Theme.of(context).textTheme.myBodyStyle,
        ),
      ],
    );
  }
}
