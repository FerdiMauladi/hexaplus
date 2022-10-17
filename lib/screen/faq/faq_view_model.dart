import 'package:flutter/material.dart';

import '../../model/question_model.dart';

class FaqViewModel extends ChangeNotifier {
  var _listQuestions = <QuestionModel>[];
  List<QuestionModel> get listQuestions => List.unmodifiable(_listQuestions);

  var _listDataQuestion = <QuestionModel>[];
  List<QuestionModel> get listDataQuestion =>
      List.unmodifiable(_listDataQuestion);
  set listDataQuestionModel(List<QuestionModel> listDataQuestionModel) {
    _listDataQuestion = listDataQuestionModel;
    notifyListeners();
  }

  Future getData() async {
    List<QuestionModel> listData = listPertanyaan;
    try {
      _listQuestions = listData;
      notifyListeners();
    } catch (e) {
      throw Exception('Data Error');
    }
  }
}
