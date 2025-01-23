sealed class ProfileEvent {
  const ProfileEvent();
}

class ProfileSetUserNameEvent extends ProfileEvent {
  final String? userName;
  const ProfileSetUserNameEvent(this.userName);
}

class ProfileSignOutEvent extends ProfileEvent {
  const ProfileSignOutEvent();
}
