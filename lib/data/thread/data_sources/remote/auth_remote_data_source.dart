import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:threads_clone/core/errors/exceptions.dart';
import 'package:threads_clone/data/thread/models/user_model.dart';
import 'package:threads_clone/domain/thread/entities/user.dart';

abstract class AuthRemoteDataSource {
  Future<User> signIn();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;
  final SharedPreferencesAsync sharedPreferences;

  AuthRemoteDataSourceImpl({
    required this.dio,
    required this.sharedPreferences,
  });

  @override
  Future<User> signIn() async {
    final Response response =
        await dio.get("https://65f970a6df15145246119ffc.mockapi.io/users/0");
    if (response.statusCode == HttpStatus.ok) {
      await sharedPreferences.setString("user", response.data.toString());
      return UserModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
