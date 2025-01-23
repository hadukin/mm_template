import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/profile.dart';
import 'package:profile/src/ui/profile/profile_event.dart';
import 'package:profile/src/ui/profile/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUserAdapter _profileUserAdapter;
  final ProfileNavigationAdapter _router;
  late final StreamSubscription<String?> _profileUserAdapterSubscription;

  ProfileBloc({
    required ProfileUserAdapter profileUserAdapter,
    required ProfileNavigationAdapter router,
  })  : _profileUserAdapter = profileUserAdapter,
        _router = router,
        super(const ProfileInitialState()) {
    on<ProfileEvent>(
      (event, emit) => switch (event) {
        ProfileSetUserNameEvent event => _handleSetUserName(event, emit),
        ProfileSignOutEvent event => _handleSignOut(event, emit),
      },
    );

    _profileUserAdapterSubscription = _profileUserAdapter.userName.listen(
      (event) {
        add(ProfileSetUserNameEvent(event));
      },
    );
  }

  Future<void> _handleSetUserName(
    ProfileSetUserNameEvent event,
    Emitter<ProfileState> emitter,
  ) async {
    emitter(ProfileAuthorizedState(userName: event.userName));
  }

  Future<void> _handleSignOut(
    ProfileSignOutEvent event,
    Emitter<ProfileState> emitter,
  ) async {
    _router.goToLogin();
  }

  @override
  Future<void> close() {
    _profileUserAdapterSubscription.cancel();

    return super.close();
  }
}
