part of 'counter_bloc.dart';

@immutable
abstract class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  @override
  List<Object?> get props => [counter];
}

//don't put get props down here but up there
class CounterInitial extends CounterState {
  const CounterInitial(int counter) : super(counter: counter);
}
