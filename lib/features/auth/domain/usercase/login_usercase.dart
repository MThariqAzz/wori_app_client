import 'package:wori_app/core.dart';

class LoginUserCase {
  final AuthRepository repository;

  LoginUserCase({required this.repository});

  Future<UserEntity> call(String email, String password) {
    return repository.login(email, password);
  }
}
