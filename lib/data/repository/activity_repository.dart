import 'dart:convert';

import 'package:change_your_mind/data/data_provider/activity_provider.dart';
import 'package:change_your_mind/data/model/activity_model.dart';

class ActivityRepository {
  Future<ActivityModel> getRandomActivity(
      String? activityType, String? participants) async {
    final queryParameters = getQueryParameters(activityType, participants);
    final response = await ActivityProvider.getRandomActivity(queryParameters);
    return activityModelFromJson(response);
  }

  ActivityModel activityModelFromJson(String string) {
    var activity = ActivityModel.fromJson(json.decode(string));
    activity.setupBackgroundType(activity);
    return activity;
  }

  Map<String, String>? getQueryParameters(
      String? activityType, String? participants) {
    Map<String, String>? queryParameters = {};
    if (activityType != null) {
      queryParameters.addAll({"type": activityType});
    }
    if (participants != null) {
      queryParameters.addAll({"participants": participants});
    }
    if (activityType == null && participants == null) {
      return null;
    }
    return queryParameters;
  }
}
