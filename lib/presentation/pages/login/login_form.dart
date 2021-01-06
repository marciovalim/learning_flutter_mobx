import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learning_mob_x/di/locator.dart';
import 'package:learning_mob_x/presentation/pages/login/login_text_field.dart';
import 'package:learning_mob_x/presentation/viewmodels/login_viewmodel.dart';
import 'package:learning_mob_x/presentation/viewmodels/user_viewmodel.dart';
import 'package:learning_mob_x/presentation/widgets/small_progress_indicator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          LoginTextField(
            label: 'Name',
            errorText: _viewModel.validateName,
            onChanged: _viewModel.setName,
          ),
          SizedBox(height: 30),
          LoginTextField(
            label: 'Password',
            errorText: _viewModel.validatePassword,
            onChanged: _viewModel.setPassword,
          ),
          SizedBox(height: 60),
          Observer(builder: (_) {
            return SizedBox(
              width: 100,
              height: 35,
              child: RaisedButton(
                color: Colors.blue[400],
                disabledColor: Colors.blue[200],
                onPressed: _viewModel.isButtonPressable ? _requestLogin : null,
                child: _viewModel.isLoginLoading
                    ? SmallProgressIndicator()
                    : Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Future<void> _requestLogin() async {
    await _viewModel.login();
    final isLogged = locator<UserViewModel>().isLogged;
    if (!isLogged) {
      // ignore: deprecated_member_use
      Scaffold.of(context).hideCurrentSnackBar();
      // ignore: deprecated_member_use
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Username or password incorrect'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
