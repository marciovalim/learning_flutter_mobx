// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<bool> _$isButtonPressableComputed;

  @override
  bool get isButtonPressable => (_$isButtonPressableComputed ??= Computed<bool>(
          () => super.isButtonPressable,
          name: '_LoginControllerBase.isButtonPressable'))
      .value;
  Computed<bool> _$formIsValidComputed;

  @override
  bool get formIsValid =>
      (_$formIsValidComputed ??= Computed<bool>(() => super.formIsValid,
              name: '_LoginControllerBase.formIsValid'))
          .value;

  final _$isLoginLoadingAtom =
      Atom(name: '_LoginControllerBase.isLoginLoading');

  @override
  bool get isLoginLoading {
    _$isLoginLoadingAtom.reportRead();
    return super.isLoginLoading;
  }

  @override
  set isLoginLoading(bool value) {
    _$isLoginLoadingAtom.reportWrite(value, super.isLoginLoading, () {
      super.isLoginLoading = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginControllerBase.login');

  @override
  Future<bool> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  @override
  String toString() {
    return '''
isLoginLoading: ${isLoginLoading},
isButtonPressable: ${isButtonPressable},
formIsValid: ${formIsValid}
    ''';
  }
}
