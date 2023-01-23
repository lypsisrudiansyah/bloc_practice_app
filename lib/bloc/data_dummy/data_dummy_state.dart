part of 'data_dummy_bloc.dart';

@immutable
abstract class DataDummyState {}

class DataDummyInitial extends DataDummyState {}

class DataDummyLoading extends DataDummyState {}

class DataDummySuccess extends DataDummyState {
  final String resultText;

  DataDummySuccess(this.resultText);
}
