import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mm_template/di/di.dart';
import 'package:mm_template/features/profile/integrations/profile_navigation_adapter.dart';
import 'package:mm_template/router/router.dart';
import 'package:profile/profile.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        profileUserAdapter: inject(),
        router: ProfileNavigationAdapterImpl(
          inject(),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const ProfileView(),
      ),
    );
  }
}
