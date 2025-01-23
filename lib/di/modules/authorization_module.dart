import 'package:authorization/authorization.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AuthorizationModule {
  @singleton
  AuthorizationService authorizationService({
    required UserStore authorizationStore,
  }) =>
      AuthorizationService(authorizationStore: authorizationStore);

  @singleton
  UserStore authorizationStore() => UserStore();
}
