part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int counter;

  const CounterState(
    this.counter,
  );

  @override
  String toString() => 'CounterState(counter: $counter)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CounterState &&
      other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}

class CounterInitial extends CounterState {
  const CounterInitial(int counter) : super(counter);
}
