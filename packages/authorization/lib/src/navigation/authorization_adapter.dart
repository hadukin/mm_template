abstract interface class AuthorizationNavigationAdapter {
  Future<void> goToLogin();
  Future<void> goToResetPassword();
  Future<void> goToTabs();
}
