import 'package:learning_mob_x/di/locator.dart';
import 'package:learning_mob_x/presentation/viewmodels/user_viewmodel.dart';
import 'package:mobx/mobx.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  String name;
  @observable
  String password;
  @observable
  bool isLoginLoading = false;

  @computed
  bool get isButtonPressable => formIsValid && !isLoginLoading;

  @computed
  bool get formIsValid => validateName() == null && validatePassword() == null;

  @action
  void setName(String value) {
    name = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  Future<void> login() async {
    isLoginLoading = true;
    final logged = await locator<UserViewModel>().login(name, password);
    isLoginLoading = false;
    return logged;
  }

  String validateName() {
    if (name == null || name.isEmpty) {
      return "Field can't be empty";
    }
    if (name == null || name.length < 3) {
      return "Name can't be shorter than 3 characters";
    }
    return null;
  }

  String validatePassword() {
    if (password == null || password.isEmpty) {
      return "Field can't be empty";
    }
    if (password.length < 8) {
      return "Password can't be shorter than 8 characters";
    }
    return null;
  }
}
