// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginModel on _LoginModelBase, Store {
  final _$nameAtom = Atom(name: '_LoginModelBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginModelBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_LoginModelBaseActionController =
      ActionController(name: '_LoginModelBase');

  @override
  void setName(String value) {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction(
        name: '_LoginModelBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginModelBaseActionController.startAction(
        name: '_LoginModelBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
password: ${password}
    ''';
  }
}
