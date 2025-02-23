import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wori_app/core.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUserCase registerUserCase;
  final LoginUserCase loginUserCase;
  final _storage = const FlutterSecureStorage();

  AuthBloc(this.registerUserCase, this.loginUserCase)
      : super(const _Initial()) {
    on<_Login>(_onLogin);
    on<_Register>(_onRegister);
  }

  Future<void> _onRegister(_Register event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    try {
      await registerUserCase.call(event.username, event.email, event.password);
      emit(const _Success(message: 'Register success'));
    } catch (e) {
      emit(_Error(error: e.toString()));
    }
  }

  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    try {
      final user = await loginUserCase.call(event.email, event.password);
      await _storage.write(key: 'token', value: user.token);
      await _storage.write(key: 'userId', value: user.id);
      print('token: ${user.token}');
      emit(const _Success(message: 'Login success'));
    } catch (e) {
      emit(_Error(error: e.toString()));
    }
  }
}
