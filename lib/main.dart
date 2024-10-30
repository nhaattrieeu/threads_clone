import 'package:flutter/cupertino.dart';
import 'package:threads_clone/di/di.dart';

import 'core/app/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(const MyApp());
}
