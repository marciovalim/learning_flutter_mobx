import 'package:learning_mob_x/di/getIt.dart';
import 'package:learning_mob_x/services/auth_service.dart';
import 'package:mobx/mobx.dart';

part 'user_model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  @observable
  bool isLogged = false;

  @observable
  int likes = 0;

  @action
  Future<bool> login(String name, String password) async {
    isLogged = await getIt<AuthService>().login(name, password);
    return isLogged;
  }

  @action
  void logout() {
    isLogged = false;
  }

  @action
  void addLike() {
    likes++;
  }
}
