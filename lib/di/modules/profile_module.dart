import 'package:authorization/authorization.dart';
import 'package:injectable/injectable.dart';
import 'package:mm_template/features/profile/integrations/profile_user_adapter.dart';
import 'package:profile/profile.dart';

@module
abstract class ProfileModule {
  @singleton
  ProfileUserAdapter profileUserAdapter(UserStore store) => ProfileUserAdapterImpl(store);
}
