import 'package:flutter/cupertino.dart';

import 'layout_questions_model.dart';
import 'naviagation_questions_model.dart';
import 'state_questions_model.dart';
import 'widget_questions_model.dart';

const Color cardColor = Color(0xFF4993FA);

class FlutterTopics {
  final int id;
  final String topicName;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicName: "5 to 8 Age",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicName: "9 to 13 Age",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicName: "14 to 18 Age",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicName: "18 and above",
    topicQuestions: layOutQuestionsList,
  ),
];
