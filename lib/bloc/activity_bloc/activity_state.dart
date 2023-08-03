part of 'activity_bloc.dart';

@immutable
abstract class ActivityState {}

class ActivityInitial extends ActivityState {}

class ActivityLoadingState extends ActivityState {}

class ActivityLoadedState extends ActivityState {
  final ActivityModel activity;

  ActivityLoadedState(this.activity);
}

class ActivityErrorState extends ActivityState {
  final String error;

  ActivityErrorState(this.error);
}