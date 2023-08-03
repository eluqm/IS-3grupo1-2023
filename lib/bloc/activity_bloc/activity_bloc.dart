import 'dart:async';

import 'package:change_your_mind/data/model/activity_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repository/activity_repository.dart';

part 'activity_event.dart';
part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final ActivityRepository _activityRepository;

  ActivityBloc(this._activityRepository) : super(ActivityInitial()) {
    on<LoadActivityEvent>(_onLoadActivityEvent);
  }

  Future<void> _onLoadActivityEvent(
      LoadActivityEvent event, Emitter<ActivityState> emit) async {
    emit(ActivityLoadingState());
    try {
      final activity = await _activityRepository.getRandomActivity(
          event.activityType, event.participants);
      emit(ActivityLoadedState(activity));
    } catch (e) {
      emit(ActivityErrorState(e.toString()));
    }
  }
}
