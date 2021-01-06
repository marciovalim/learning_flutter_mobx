import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learning_mob_x/di/getIt.dart';
import 'package:learning_mob_x/models/user_model.dart';
import 'package:learning_mob_x/presentation/pages/home/home_page.dart';
import 'package:learning_mob_x/presentation/pages/login/login_page.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Observer(builder: (_) {
        final userModel = getIt<UserModel>();
        return userModel.isLogged ? const HomePage() : const LoginPage();
      }),
    );
  }
}
