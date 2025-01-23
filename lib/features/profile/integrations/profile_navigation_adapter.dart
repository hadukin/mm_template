import 'package:mm_template/router/router.dart';
import 'package:profile/profile.dart';

final class ProfileNavigationAdapterImpl implements ProfileNavigationAdapter {
  final AppRouter router;
  const ProfileNavigationAdapterImpl(this.router);

  @override
  Future<void> goToLogin() async {
    router.replaceAll([const LoginRoute()]);
  }
}
