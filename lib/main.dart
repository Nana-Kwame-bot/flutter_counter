import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'bloc/counter_bloc.dart';
import 'counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(BlocProvider(
    create: (BuildContext context) => CounterBloc(),
    child: CounterApp(),
  ));
}
