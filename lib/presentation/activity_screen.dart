import 'package:change_your_mind/bloc/activity_bloc/activity_bloc.dart';
import 'package:change_your_mind/presentation/error_screen.dart';
import 'package:change_your_mind/presentation/loading_activity_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loaded_activity_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key, this.activityType, this.participants})
      : super(key: key);

  final String? activityType;
  final String? participants;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ActivityBloc>(context).add(LoadActivityEvent(
        activityType: activityType, participants: participants));
    return Scaffold(body:
        BlocBuilder<ActivityBloc, ActivityState>(builder: (context, state) {
      if (state is ActivityLoadingState) {
        return const LoadingActivityScreen();
      }
      if (state is ActivityLoadedState) {
        return LoadedActivityScreen(
          activity: state.activity,
          activityType: activityType,
          participants: participants,
        );
      }
      if (state is ActivityErrorState) {
        return ErrorScreen(error: state.error);
      } else {
        return Container();
      }
    }));
  }
}
