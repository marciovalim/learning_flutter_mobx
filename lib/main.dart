import 'package:flutter/widgets.dart';
import 'package:learning_mob_x/di/locator.dart';
import 'package:learning_mob_x/presentation/app.dart';

void main() async {
  await GetItUtils.setup();
  runApp(App());
}
