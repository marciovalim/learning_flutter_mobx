import 'package:learning_mob_x/di/getIt.dart';
import 'package:learning_mob_x/models/login_model.dart';
import 'package:learning_mob_x/models/user_model.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final loginModel = LoginModel();

  @computed
  bool get isButtonPressable => formIsValid && !isLoginLoading;

  @observable
  bool isLoginLoading = false;

  @computed
  bool get formIsValid => validateName() == null && validatePassword() == null;

  String validateName() {
    final name = loginModel.name;
    if (name == null || name.isEmpty) {
      return "Field can't be empty";
    }
    if (name == null || name.length < 3) {
      return "Name can't be shorter than 3 characters";
    }
    return null;
  }

  String validatePassword() {
    final password = loginModel.password;
    if (password == null || password.isEmpty) {
      return "Field can't be empty";
    }
    if (password.length < 8) {
      return "Password can't be shorter than 8 characters";
    }
    return null;
  }

  @action
  Future<bool> login() async {
    isLoginLoading = true;
    final logged =
        await getIt<UserModel>().login(loginModel.name, loginModel.password);
    isLoginLoading = false;
    return logged;
  }
}
