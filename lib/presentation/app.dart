import 'package:flutter/material.dart';
import 'package:learning_mob_x/presentation/pages/home/home_page.dart';
import 'package:learning_mob_x/state/user.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          Provider<User>(
            create: (_) => User(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
