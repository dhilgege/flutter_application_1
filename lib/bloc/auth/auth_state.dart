part of 'auth_bloc.dart';

// @immutable
sealed class AuthState {}

final class AuthStateLogin extends AuthState {}
final class AuthStateLoading extends AuthState {}
final class AuthStateLogout extends AuthState {}
final class AuthStatError extends AuthState {
  AuthStatError (this.massage);
  final String massage;
}

