import 'package:dartz/dartz.dart';
import 'package:threads_clone/core/errors/exceptions.dart';
import 'package:threads_clone/core/errors/failures.dart';
import 'package:threads_clone/data/thread/data_sources/remote/auth_remote_data_source.dart';
import 'package:threads_clone/domain/thread/entities/user.dart';
import 'package:threads_clone/domain/thread/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, User>> signIn() async {
    try {
      return Right(await remoteDataSource.signIn());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
