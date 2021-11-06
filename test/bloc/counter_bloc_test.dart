import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_counter/bloc/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    tearDown(() {
      counterBloc.close();
    });

    test('initial state is CounterInitial(0)', () {
      expect(counterBloc.state, const CounterInitial(0));
    });

    //  expect(CounterCubit().state, equals(0));
    //         expect: () => [equals(1)],

//they are in square backets because more than one event can be emitted as
//an iterable
    blocTest(
      'emits CounterInitial(1) when CounterEvent.increment is added',
      build: () {
        return counterBloc;
      },
      act: (CounterBloc bloc) {
        return bloc.add(Increment());
      },
      expect: () {
        return [const CounterInitial(1)];
      },
    );

    blocTest(
      'emits CounterInitial(-1) when CounterEvent.decrement is added',
      build: () {
        return counterBloc;
      },
      act: (CounterBloc bloc) {
        return bloc.add(Decrement());
      },
      expect: () {
        return [const CounterInitial(-1)];

        ///add [] more ifo from the 220 flutter europe bloc showcase
      },
    );
  });
}
