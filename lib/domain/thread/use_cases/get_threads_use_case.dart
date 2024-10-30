import 'package:dartz/dartz.dart';
import 'package:threads_clone/core/errors/failures.dart';
import 'package:threads_clone/core/use_cases/use_case.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';
import 'package:threads_clone/domain/thread/repositories/thread_repository.dart';

class GetThreadsUseCase implements UseCaseWithoutParams<List<Thread>> {
  final ThreadRepository repository;

  GetThreadsUseCase({required this.repository});

  @override
  Future<Either<Failure, List<Thread>>> call() async {
    return await repository.getThreads();
  }
}
