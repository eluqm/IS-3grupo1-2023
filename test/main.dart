import 'package:are_you_bored_flutter_app/bloc/activity_bloc/activity_bloc.dart';
import 'package:are_you_bored_flutter_app/data/repository/activity_repository.dart';
import 'package:are_you_bored_flutter_app/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ActivityBloc>(
        create: (BuildContext context) => ActivityBloc(ActivityRepository()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Are you bored?',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.purple,
      ),
      home: const HomeScreen(),
    );
  }
}
