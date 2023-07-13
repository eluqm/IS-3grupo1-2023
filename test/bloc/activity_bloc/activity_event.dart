part of 'activity_bloc.dart';

@immutable
abstract class ActivityEvent {}

class LoadActivityEvent extends ActivityEvent {
  final String? activityType;
  final String? participants;

  LoadActivityEvent({this.activityType, this.participants});
}
