import 'package:dartz/dartz.dart';
import 'package:threads_clone/core/errors/failures.dart';
import 'package:threads_clone/core/use_cases/use_case.dart';
import 'package:threads_clone/domain/thread/entities/user.dart';
import 'package:threads_clone/domain/thread/repositories/auth_repository.dart';

class SignInUseCase implements UseCaseWithoutParams<User> {
  SignInUseCase({required this.repository});

  final AuthRepository repository;

  @override
  Future<Either<Failure, User>> call() async {
    return await repository.signIn();
  }
}
