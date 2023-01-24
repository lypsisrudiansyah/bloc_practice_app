// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bc_bloc.dart';

@immutable
abstract class AuthBcEvent {}

class OnAuthCalledEvent extends AuthBcEvent {
  final String username;
  final String password;
  OnAuthCalledEvent({
    required this.username,
    required this.password,
  });
}
