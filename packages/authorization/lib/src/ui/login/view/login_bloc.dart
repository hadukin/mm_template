import 'package:authorization/authorization.dart';
import 'package:bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthorizationService _service;
  final AuthorizationNavigationAdapter _router;

  LoginBloc({
    required AuthorizationService service,
    required AuthorizationNavigationAdapter router,
  })  : _service = service,
        _router = router,
        super(const LoginIsNotAuthorizedState()) {
    on<LoginEvent>(
      (event, emit) => switch (event) {
        final AuthorizationLoginEvent event => _onLogin(event, emit),
      },
    );
  }

  Future<void> _onLogin(
    AuthorizationLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginLoadingAuthorizedState());
    final user = await _service.login(userName: event.login);
    emit(LoginIsAuthorizedState(user));
    _router.goToTabs();
  }
}
