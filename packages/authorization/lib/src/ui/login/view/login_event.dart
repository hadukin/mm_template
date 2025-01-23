sealed class LoginEvent {
  const LoginEvent();
}

class AuthorizationLoginEvent extends LoginEvent {
  final String login;
  final String password;

  const AuthorizationLoginEvent({
    required this.login,
    required this.password,
  });
}
