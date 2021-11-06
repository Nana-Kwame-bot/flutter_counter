part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

//don't put get props in the non-abstract classes or else you will get instance
//of INcrement shit
class Increment extends CounterEvent {
  // @override
  // String toString() => 'Increment';
}

class Decrement extends CounterEvent {
  // @override
  // String toString() => 'Decrement';
}
