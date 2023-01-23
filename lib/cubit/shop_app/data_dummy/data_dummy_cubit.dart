import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_dummy_state.dart';

class DataDummyCubit extends Cubit<DataDummyState2> {
  DataDummyCubit() : super(DataDummyInitial2());

  void getDataDummy() async {
    emit(DataDummyLoading2());
    await Future.delayed(const Duration(milliseconds: 2500));
    emit(DataDummySuccess2("Succeed get the data(cubit)."));
  }
}
