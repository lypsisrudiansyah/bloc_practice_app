import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';

part 'time_called_state.dart';

class TimeCalledCubit extends Cubit<TimeCalledState> {
  TimeCalledCubit() : super(TimeCalledInitial());
  // * first Way
  int intValue = 0;

  void callTheData() async {
    // * Should be not calling other State class(i used to TimeCalledLoading()) because extending TimeCalledState(second way) value goes to 0 again, 
    //* but on first way have 0 issue, increment with 1 it's working but on little time calling TimeCalledLoading() the state going 0 or the mistake on the BlocBuilder Screen
    
    // emit(TimeCalledLoading());
    await Future.delayed(const Duration(milliseconds: 1000));
    // * first Way
    intValue++;
    emit(TimeCalledTrigerred(intValue));
    
    // * Second Way
    // emit(TimeCalledTrigerred(state.intValue + 1));
  }
}
