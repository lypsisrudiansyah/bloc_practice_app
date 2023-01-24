// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bc_bloc.dart';

@immutable
abstract class AuthBcState {}

class AuthBcInitial extends AuthBcState {}

class AuthBcLoading extends AuthBcState {}

class AuthBcSucceed extends AuthBcState {
  final String username;
  AuthBcSucceed({
    required this.username,
  });
}
