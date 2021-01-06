import 'package:learning_mob_x/data/core/auth_service.dart';
import 'package:learning_mob_x/domain/entities/login_params.dart';

abstract class UserDataSource {
  Future<bool> login(LoginParams loginParams);
}

class UserDataSourceImpl extends UserDataSource {
  final AuthService authService;

  UserDataSourceImpl(this.authService);

  @override
  Future<bool> login(LoginParams params) async {
    return await authService.login(params);
  }
}
