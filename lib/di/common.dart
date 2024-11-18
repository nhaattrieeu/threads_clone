import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.dart';

void registerCommonDependence() {
  //network
  sl.registerLazySingleton<Dio>(() => Dio());
  //shared preferences
  sl.registerLazySingleton<SharedPreferencesAsync>(
    () => SharedPreferencesAsync(),
  );
}
