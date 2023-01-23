part of 'data_dummy_cubit.dart';

@immutable
abstract class DataDummyState2 {}

class DataDummyInitial2 extends DataDummyState2 {}

class DataDummyLoading2 extends DataDummyState2 {}

class DataDummySuccess2 extends DataDummyState2 {
  final String resultText;

  DataDummySuccess2(this.resultText);
}
