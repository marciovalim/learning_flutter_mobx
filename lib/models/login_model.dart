import 'package:mobx/mobx.dart';

part 'login_model.g.dart';

class LoginModel = _LoginModelBase with _$LoginModel;

abstract class _LoginModelBase with Store {
  @observable
  String name;

  @observable
  String password;

  @action
  void setName(String value) => name = value;

  @action
  void setPassword(String value) => password = value;
}
