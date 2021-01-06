import 'package:learning_mob_x/di/locator.dart';
import 'package:learning_mob_x/domain/entities/login_params.dart';
import 'package:learning_mob_x/domain/usecases/login_usecase.dart';
import 'package:mobx/mobx.dart';

part 'user_viewmodel.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store {
  @observable
  bool isLogged = false;

  @observable
  int likes = 0;

  @action
  Future<void> login(String name, String password) async {
    final params = LoginParams(name: name, password: password);
    isLogged = await locator<LoginUsecase>().execute(params);
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
