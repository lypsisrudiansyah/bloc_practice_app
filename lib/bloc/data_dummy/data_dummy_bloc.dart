import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_dummy_event.dart';
part 'data_dummy_state.dart';

class DataDummyBloc extends Bloc<DataDummyEvent, DataDummyState> {
  DataDummyBloc() : super(DataDummyInitial()) {
    on<OnDataEventCalled>((event, emit) async {
      emit(DataDummyLoading());
      await Future.delayed(const Duration(milliseconds: 2500));
      emit(DataDummySuccess("Succeed get the data."));
    });
  }
}
