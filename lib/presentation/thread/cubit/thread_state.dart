part of 'thread_cubit.dart';

enum Status { init, loading, success, error }

class ThreadState extends Equatable {
  final Status status;
  final List<Thread> threads;

  const ThreadState({required this.status, required this.threads});

  ThreadState copyWith({
    Status? status,
    List<Thread>? threads,
  }) {
    return ThreadState(
      status: status ?? this.status,
      threads: threads ?? this.threads,
    );
  }

  @override
  List<Object> get props => [status, threads];
}
