import 'package:learning_mob_x/domain/entities/login_params.dart';

class AuthService {
  const AuthService.singleton();

  Future<bool> login(LoginParams params) async {
    await Future.delayed(Duration(seconds: 1));
    return params.name == "Marcio" && params.password == "12345678";
  }
}
