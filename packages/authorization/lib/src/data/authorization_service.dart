import 'package:authorization/src/data/authorization_store.dart';
import 'package:authorization/src/domain/user_model.dart';

class AuthorizationService {
  final UserStore _authorizationStore;

  AuthorizationService({
    required UserStore authorizationStore,
  }) : _authorizationStore = authorizationStore;

  Future<UserModel> login({
    required String userName,
  }) async {
    final result = await Future.delayed(const Duration(seconds: 1), () => UserModel(userName));
    _authorizationStore.setValue(result);

    return result;
  }
}
