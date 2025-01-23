sealed class ProfileState {
  const ProfileState();
}

class ProfileInitialState extends ProfileState {
  const ProfileInitialState();
}

class ProfileAuthorizedState extends ProfileState {
  final String? userName;
  const ProfileAuthorizedState({required this.userName});
}
