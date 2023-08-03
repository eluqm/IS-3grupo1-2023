class ActivityModel {
  ActivityModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.link
  });

  String activity;
  String type;
  int participants;
  String link;
  int backgroundType = 0;

  factory ActivityModel.fromJson(Map<String, dynamic> json){
    return ActivityModel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        link: json["link"] ?? "",
    );
  }

  setupBackgroundType(ActivityModel activityModel) {
    if (activityModel.type == "education" || activityModel.type == "cooking" || activityModel.type == "recreational"){
      activityModel.backgroundType = 0;
    } else if (activityModel.type == "music" || activityModel.type == "diy" || activityModel.type == "relaxation"){
      activityModel.backgroundType = 1;
    } else {
      activityModel.backgroundType = 2;
    }
  }
}