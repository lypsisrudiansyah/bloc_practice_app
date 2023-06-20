import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_bc_event.dart';
part 'auth_bc_state.dart';

class AuthBcBloc extends Bloc<AuthBcEvent, AuthBcState> {
  AuthBcBloc() : super(AuthBcInitial()) {
    on<OnAuthCalledEvent>((event, emit) async {
      emit(AuthBcLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(AuthBcSucceed(username: event.username));
    });
  }
}
