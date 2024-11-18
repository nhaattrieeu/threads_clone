import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads_clone/core/config/app_constants.dart';
import 'package:threads_clone/domain/thread/entities/user.dart';
import 'package:threads_clone/domain/thread/use_cases/sign_in_use_case.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._signInUseCase)
      : super(const AuthState(status: Status.init, user: User.empty));

  final SignInUseCase _signInUseCase;

  Future<void> signIn() async {
    emit(state.copyWith(status: Status.loading));
    final failureOrData = await _signInUseCase();
    failureOrData.fold(
      (failure) => emit(state.copyWith(status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success, user: data)),
    );
  }
}
