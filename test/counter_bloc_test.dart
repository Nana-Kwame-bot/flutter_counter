import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_counter/bloc/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 0', () {
      expect(counterBloc.state, const CounterInitial(0));
    });

    blocTest(
      'emits [1] when CounterEvent.increment is added',
      build: () {
        return counterBloc;
      },
      act: (CounterBloc bloc) {
        return bloc.add(Increment());
      },
      expect: () {
        return const CounterInitial(1);
      },
    );

    blocTest(
      'emits [-1] when CounterEvent.decrement is added',
      build: () {
        return counterBloc;
      },
      act: (CounterBloc bloc) {
        return bloc.add(Decrement());
      },
      expect: () {
        return const CounterInitial(-1);
      },
    );
  });
}
