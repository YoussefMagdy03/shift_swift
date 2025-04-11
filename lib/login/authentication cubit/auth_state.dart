part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitialState extends AuthState {}
final class RegisterLoadingState extends AuthState {}

final class RegisterSuccessState extends AuthState {}

final class FailedToRegisterState extends AuthState {
  String errorMessage;
  FailedToRegisterState({required this.errorMessage});
}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class FailedTOLoginState extends AuthState {
  String errorMessage;
  FailedTOLoginState({required this.errorMessage});
}
