import 'package:dartz/dartz.dart';
import 'package:threads_clone/core/errors/failures.dart';
import 'package:threads_clone/domain/thread/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signIn();
//
// Future<Either<Failure, User>> signInWithPassword(
//     String username, String password);
}
