import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(0)) {
    on<Increment>(_onIncrement);
    on<Decrement>(_onDecrement);
  }

  void _onIncrement(Increment event, Emitter<CounterState> emit) {
    emit(CounterInitial(state.counter + 1));
  }

  void _onDecrement(Decrement event, Emitter<CounterState> emit) {
    emit(CounterInitial(state.counter - 1));
  }
}
