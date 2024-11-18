import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads_clone/core/config/app_constants.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';
import 'package:threads_clone/domain/thread/use_cases/get_threads_use_case.dart';

part 'thread_state.dart';

class ThreadCubit extends Cubit<ThreadState> {
  ThreadCubit(this._getThreadsUseCase)
      : super(const ThreadState(status: Status.init, threads: []));

  final GetThreadsUseCase _getThreadsUseCase;

  Future<void> getThreads() async {
    emit(state.copyWith(status: Status.loading));
    final failureOrData = await _getThreadsUseCase();
    failureOrData.fold(
      (failure) => emit(state.copyWith(status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success, threads: data)),
    );
  }

  void handleLike(String id) {
    List<Thread> tmp = List.from(state.threads);
    for (var i = 0; i < tmp.length; i++) {
      if (tmp[i].id == id) {
        tmp[i] = tmp[i].copyWith(
          isLiked: !tmp[i].isLiked,
          like: tmp[i].isLiked ? tmp[i].like - 1 : tmp[i].like + 1,
        );
        break;
      }
    }
    emit(state.copyWith(threads: tmp));
  }
}
