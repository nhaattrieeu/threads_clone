import 'package:threads_clone/data/thread/data_sources/thread_remote_data_source.dart';
import 'package:threads_clone/data/thread/repositories/thread_repository_impl.dart';
import 'package:threads_clone/domain/thread/repositories/thread_repository.dart';
import 'package:threads_clone/domain/thread/use_cases/get_threads_use_case.dart';
import 'package:threads_clone/presentation/thread/cubit/thread_cubit.dart';

import 'di.dart';

void registerThreadFeature() {
  //bloc
  sl.registerFactory<ThreadCubit>(() => ThreadCubit(sl()));

  //use case
  sl.registerLazySingleton<GetThreadsUseCase>(
      () => GetThreadsUseCase(repository: sl()));

  //repository
  sl.registerLazySingleton<ThreadRepository>(
      () => ThreadRepositoryImpl(remoteDataSource: sl()));

  //data source
  sl.registerLazySingleton<ThreadRemoteDataSource>(
      () => ThreadRemoteDataSourceImpl(dio: sl()));
}
