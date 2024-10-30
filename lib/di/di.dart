import 'package:get_it/get_it.dart';
import 'package:threads_clone/di/common.dart';
import 'package:threads_clone/di/thread.dart';

final sl = GetIt.instance;

Future<void> init() async {
  registerCommonDependence();
  registerThreadFeature();
}
