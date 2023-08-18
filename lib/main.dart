import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/counter_observer.dart';

import 'app.dart';
import 'counter/cubit/counter_cubit.dart';

Future<void> main() async {
  Bloc.observer = const CounterObserver();
  CounterCubit(0)
    ..increment()
    ..close();
  runApp(const CounterApp());
}
