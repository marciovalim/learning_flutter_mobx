import 'package:learning_mob_x/data/data_sources/user_data_source.dart';
import 'package:learning_mob_x/domain/entities/login_params.dart';
import 'package:learning_mob_x/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<bool> login(LoginParams params) async {
    return await userDataSource.login(params);
  }
}
