import 'package:authorization/src/domain/user_model.dart';

sealed class LoginState {
  const LoginState();
}

final class LoginIsAuthorizedState extends LoginState {
  final UserModel user;
  const LoginIsAuthorizedState(this.user);
}

final class LoginIsNotAuthorizedState extends LoginState {
  const LoginIsNotAuthorizedState();
}

final class LoginLoadingAuthorizedState extends LoginState {
  const LoginLoadingAuthorizedState();
}
