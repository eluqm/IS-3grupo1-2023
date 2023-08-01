import 'package:flutter_test/flutter_test.dart';
import 'package:are_you_bored_flutter_app/data/model/activity_model.dart';


void main() {
  group('ActivityModel', () {
    test('fromJson creates ActivityModel instance from JSON', () {
      final json = {
        "activity": "Read a book",
        "type": "education",
        "participants": 1,
        "link": "https://example.com"
      };
      final activityModel = ActivityModel.fromJson(json);
      expect(activityModel.activity, equals("Read a book"));
      expect(activityModel.type, equals("education"));
      expect(activityModel.participants, equals(1));
      expect(activityModel.link, equals("https://example.com"));

      expect(activityModel.backgroundType, equals(0));
    });