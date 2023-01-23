part of 'time_called_cubit.dart';

// * First Way
// @immutable
abstract class TimeCalledState {}

class TimeCalledInitial extends TimeCalledState {}

class TimeCalledLoading extends TimeCalledState {
}

class TimeCalledTrigerred extends TimeCalledState {
  int intValue;

  TimeCalledTrigerred(this.intValue); 
}


// * Second Way
/* abstract class TimeCalledState {
  int intValue = 0;
}

class TimeCalledInitial extends TimeCalledState {
}

class TimeCalledLoading extends TimeCalledState {
}

class TimeCalledTrigerred extends TimeCalledState {
  TimeCalledTrigerred(int val) : super() {
    intValue = val;
  }
} */