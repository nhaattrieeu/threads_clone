import 'package:dartz/dartz.dart';
import 'package:threads_clone/core/errors/exceptions.dart';
import 'package:threads_clone/core/errors/failures.dart';
import 'package:threads_clone/data/thread/data_sources/remote/thread_remote_data_source.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';
import 'package:threads_clone/domain/thread/repositories/thread_repository.dart';

class ThreadRepositoryImpl implements ThreadRepository {
  final ThreadRemoteDataSource remoteDataSource;

  ThreadRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Thread>>> getThreads() async {
    try {
      return Right(await remoteDataSource.getThreads());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
