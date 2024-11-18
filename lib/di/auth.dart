import 'package:threads_clone/data/thread/data_sources/remote/auth_remote_data_source.dart';
import 'package:threads_clone/data/thread/repositories/auth_repository_impl.dart';
import 'package:threads_clone/domain/thread/repositories/auth_repository.dart';
import 'package:threads_clone/domain/thread/use_cases/sign_in_use_case.dart';
import 'package:threads_clone/presentation/auth/cubit/auth_cubit.dart';

import 'di.dart';

void registerAuthFeature() {
  //bloc
  sl.registerFactory<AuthCubit>(
    () => AuthCubit(sl()),
  );

  //use case
  sl.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(repository: sl()),
  );

  //repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );

  //data source
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: sl(), sharedPreferences: sl()),
  );
}
