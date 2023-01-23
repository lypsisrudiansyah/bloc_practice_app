import 'package:flutter_bloc/flutter_bloc.dart';


// * Make Event using enum
enum CounterEvent2 {
  increment,
  decrement
}

class CounterState2 {
  int numberValue;

  CounterState2(this.numberValue);
}

// * Using bloc
class CounterBloc2 extends Bloc<CounterEvent2, CounterState2> {
  CounterBloc2() : super(CounterState2(0)) {
    on<CounterEvent2>((event, emit) {
      if (event == CounterEvent2.decrement) {
        emit(CounterState2(state.numberValue - 1));
      } else {
        emit(CounterState2(state.numberValue + 1));
      }
    });
  }
}

// * Using cubit
class CounterCubit extends Cubit<CounterState2> {
  CounterCubit() : super(CounterState2(0));

  void increment() {
    emit(CounterState2(state.numberValue+1));
  }

  void decrement() {
    emit(CounterState2(state.numberValue-1));
  }
}