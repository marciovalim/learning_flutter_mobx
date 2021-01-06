import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learning_mob_x/di/locator.dart';
import 'package:learning_mob_x/presentation/viewmodels/user_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = locator<UserViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: locator<UserViewModel>().logout,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Observer(builder: (_) {
          return Text('Likes: ${user.likes}');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: user.addLike,
        child: Icon(Icons.add),
      ),
    );
  }
}
