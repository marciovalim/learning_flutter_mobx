import 'package:learning_mob_x/domain/entities/login_params.dart';
import 'package:learning_mob_x/domain/repositories/user_repository.dart';
import 'package:learning_mob_x/domain/usecases/usecase.dart';

class LoginUsecase extends Usecase<LoginParams, Future<bool>> {
  final UserRepository userRepository;

  const LoginUsecase(this.userRepository);

  @override
  Future<bool> execute(LoginParams params) async {
    return await userRepository.login(params);
  }
}
