import 'package:dartz/dartz.dart';
import 'package:threads_clone/core/errors/failures.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';

abstract class ThreadRepository {
  Future<Either<Failure, List<Thread>>> getThreads();
}
