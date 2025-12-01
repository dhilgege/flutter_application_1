part of 'auth_bloc.dart';

// @immutable
sealed class AuthEvent {}


class AuthEventlogin extends AuthEvent{
  AuthEventlogin(this.email, this.pass);
  final String email;
  final String pass;
}
class AuthEventlogout extends AuthEvent{}
