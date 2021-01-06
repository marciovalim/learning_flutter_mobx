import 'package:get_it/get_it.dart';
import 'package:learning_mob_x/models/user_model.dart';
import 'package:learning_mob_x/services/auth_service.dart';

final getIt = GetIt.instance;

class GetItUtils {
  const GetItUtils._();

  static Future<void> setup() async {
    getIt.registerSingleton<UserModel>(UserModel());
    getIt.registerSingleton<AuthService>(AuthService.singleton());
  }
}
