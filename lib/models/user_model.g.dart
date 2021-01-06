// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModel on _UserModelBase, Store {
  final _$isLoggedAtom = Atom(name: '_UserModelBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  final _$likesAtom = Atom(name: '_UserModelBase.likes');

  @override
  int get likes {
    _$likesAtom.reportRead();
    return super.likes;
  }

  @override
  set likes(int value) {
    _$likesAtom.reportWrite(value, super.likes, () {
      super.likes = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_UserModelBase.login');

  @override
  Future<bool> login(String name, String password) {
    return _$loginAsyncAction.run(() => super.login(name, password));
  }

  final _$_UserModelBaseActionController =
      ActionController(name: '_UserModelBase');

  @override
  void logout() {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.logout');
    try {
      return super.logout();
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addLike() {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.addLike');
    try {
      return super.addLike();
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged},
likes: ${likes}
    ''';
  }
}
