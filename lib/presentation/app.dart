import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learning_mob_x/di/locator.dart';
import 'package:learning_mob_x/presentation/pages/home/home_page.dart';
import 'package:learning_mob_x/presentation/pages/login/login_page.dart';
import 'package:learning_mob_x/presentation/viewmodels/user_viewmodel.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Observer(builder: (_) {
        final userModel = locator<UserViewModel>();
        return userModel.isLogged ? const HomePage() : const LoginPage();
      }),
    );
  }
}
