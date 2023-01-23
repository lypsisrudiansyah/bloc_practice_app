import 'package:flutter_bloc/flutter_bloc.dart';

// * Make Event using Class
abstract class CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class CounterState {
  int numberValue;

  CounterState(this.numberValue);
}

// * Implement bloc with String State 
/* class CounterBloc extends Bloc<CounterEvent, String> {
  CounterBloc() : super("7") {
    on<CounterEvent>((event, emit) {
      if (event is DecrementCounterEvent) {
        emit((int.parse(state) - 1).toString());
      } else {
        emit((int.parse(state) + 1).toString());
      }
    });
  }
} */

//* Implement bloc with Class/Object State
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {

    on<CounterEvent>((event, emit) {
      if (event is DecrementCounterEvent) {
        emit(CounterState(state.numberValue-1));
      } else {
        emit(CounterState(state.numberValue+1));
      }
    });
  }
}


