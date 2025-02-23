import 'package:wori_app/features/auth/domain/entities/user_entity.dart';
import 'package:wori_app/features/auth/domain/repository/auth_repository.dart';

class RegisterUserCase {
  final AuthRepository repository;

  RegisterUserCase({required this.repository});

  Future<UserEntity> call(String username, email, String password) {
    return repository.register(username, email, password);
  }
}
