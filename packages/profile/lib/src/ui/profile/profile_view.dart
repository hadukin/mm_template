import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/src/ui/profile/profile_bloc.dart';
import 'package:profile/src/ui/profile/profile_event.dart';
import 'package:profile/src/ui/profile/profile_state.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return switch (state) {
          ProfileInitialState _ => const CircularProgressIndicator(),
          ProfileAuthorizedState payload => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Text(
                    '${payload.userName}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(const ProfileSignOutEvent());
                    },
                    child: Text('Sign out'),
                  ),
                ],
              ),
            ),
        };
      },
    );
  }
}
