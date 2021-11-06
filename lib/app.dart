import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'presentation/router/app_router.dart';

final AppRouter _appRouter = AppRouter();

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  CounterApp({Key? key})
      : super(
          key: key,
          home: const CounterPage(),
          onGenerateRoute: _appRouter.onGenerateRoute,
        );
}
