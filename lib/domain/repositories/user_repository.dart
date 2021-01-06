import 'package:learning_mob_x/domain/entities/login_params.dart';

abstract class UserRepository {
  Future<bool> login(LoginParams params);
}
