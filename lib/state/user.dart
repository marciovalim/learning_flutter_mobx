import 'package:mobx/mobx.dart';

part 'user.g.dart';

class User = _UserBase with _$User;

abstract class _UserBase with Store {
  @observable
  int likes = 0;

  @action
  void addLike() {
    likes++;
  }
}
