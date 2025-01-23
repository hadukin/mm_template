import 'package:authorization/authorization.dart';
import 'package:profile/profile.dart';

final class ProfileUserAdapterImpl implements ProfileUserAdapter {
  final UserStore userStore;
  ProfileUserAdapterImpl(this.userStore);

  @override
  Stream<String?> get userName => userStore.observe.map((event) => event?.phone);
}
