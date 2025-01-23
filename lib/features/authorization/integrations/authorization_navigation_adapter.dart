import 'package:authorization/authorization.dart';
import 'package:mm_template/router/router.dart';

final class AuthorizationNavigationAdapterImpl implements AuthorizationNavigationAdapter {
  final AppRouter router;
  AuthorizationNavigationAdapterImpl(this.router);

  @override
  Future<void> goToLogin() async {
    router.replace(const LoginRoute());
  }

  @override
  Future<void> goToResetPassword() async {
    router.navigate(const ResetPasswordRoute());
  }

  @override
  Future<void> goToTabs() async {
    router.replace(const TabsRootRoute());
  }
}
