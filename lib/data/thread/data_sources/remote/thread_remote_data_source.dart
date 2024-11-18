import 'dart:io';

import 'package:dio/dio.dart';
import 'package:threads_clone/core/errors/exceptions.dart';
import 'package:threads_clone/data/thread/models/thread_model.dart';

abstract class ThreadRemoteDataSource {
  Future<List<ThreadModel>> getThreads();
}

class ThreadRemoteDataSourceImpl implements ThreadRemoteDataSource {
  final Dio dio;

  ThreadRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<ThreadModel>> getThreads() async {
    final Response response =
        await dio.get("https://65f970a6df15145246119ffc.mockapi.io/threads");
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> data = response.data;
      return data.map((e) => ThreadModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }
}
