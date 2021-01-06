import 'package:flutter/widgets.dart';
import 'package:learning_mob_x/di/getIt.dart';
import 'package:learning_mob_x/presentation/app.dart';

void main() async {
  await GetItUtils.setup();
  runApp(App());
}
