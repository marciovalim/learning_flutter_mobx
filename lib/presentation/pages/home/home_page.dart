import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learning_mob_x/state/user.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
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
