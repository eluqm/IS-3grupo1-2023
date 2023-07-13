import 'dart:convert';

import 'package:are_you_bored_flutter_app/data/data_provider/activity_provider.dart';
import 'package:are_you_bored_flutter_app/data/model/activity_model.dart';

class ActivityRepository {
  Future<ActivityModel> getRandomActivity(
      String? activityType, String? participants) async {
    final queryParameters = getQueryParameters(activityType, participants);
    final response = await ActivityProvider.getRandomActivity(queryParameters);
    return activityModelFromJson(response);
  }
}
