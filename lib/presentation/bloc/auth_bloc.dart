import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import '../../domain/usecase/login_usecase.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;

  AuthBloc(this.loginUseCase) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
        emit(AuthLoading());
        try{
            final result = await loginUseCase(event.email, event.password);
            emit(AuthSuccess(result['user'], result['token']));
        }catch (e) {
            emit(AuthFailure(e.toString()));
        }
    });
  }
}
