part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final Status status;
  final User user;

  const AuthState({required this.status, required this.user});

  AuthState copyWith({
    Status? status,
    User? user,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object> get props => [status, user];
}
