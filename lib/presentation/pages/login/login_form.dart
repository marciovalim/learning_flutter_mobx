import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learning_mob_x/controllers/login_controller.dart';
import 'package:learning_mob_x/presentation/pages/login/login_text_field.dart';
import 'package:learning_mob_x/presentation/widgets/small_progress_indicator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          LoginTextField(
            label: 'Name',
            errorText: _controller.validateName,
            onChanged: _controller.loginModel.setName,
          ),
          SizedBox(height: 30),
          LoginTextField(
            label: 'Password',
            errorText: _controller.validatePassword,
            onChanged: _controller.loginModel.setPassword,
          ),
          SizedBox(height: 60),
          Observer(builder: (_) {
            return SizedBox(
              width: 100,
              height: 35,
              child: RaisedButton(
                color: Colors.blue[400],
                disabledColor: Colors.blue[200],
                onPressed: _controller.isButtonPressable ? _requestLogin : null,
                child: _controller.isLoginLoading
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
    final isLogged = await _controller.login();
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
