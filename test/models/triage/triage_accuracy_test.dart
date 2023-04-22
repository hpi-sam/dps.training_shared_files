import 'dart:convert';

import 'package:dps.training_shared_files/models/triage/triage_accuracy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test triage_accuracy json parsing', () {
    const String jsonString = 
    '''
    {
      "correct": 1,
      "over": 2,
      "under": 3,
      "not_triage": 4
    }
    ''';

    final Map<String, dynamic> json = jsonDecode(jsonString);
    final TriageAccuracy triageAccuracy = TriageAccuracy.fromJson(json);

    expect(triageAccuracy.correct, 1);
    expect(triageAccuracy.over, 2);
    expect(triageAccuracy.under, 3);
    expect(triageAccuracy.notTriage, 4);
  });
}