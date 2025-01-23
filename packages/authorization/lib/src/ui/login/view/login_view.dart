import 'package:authorization/authorization.dart';
import 'package:core/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorizationView extends StatefulWidget {
  final AuthorizationNavigationAdapter navigation;

  const AuthorizationView({
    super.key,
    required this.navigation,
  });

  @override
  State<AuthorizationView> createState() => _AuthorizationViewState();
}

class _AuthorizationViewState extends State<AuthorizationView> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final text = context.l<LoginLocalizationAdapter>()?.text;

        return Column(
          children: [
            TextField(
              controller: loginController,
              decoration: const InputDecoration(hintText: 'Login'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            if (state is LoginLoadingAuthorizedState)
              const CircularProgressIndicator.adaptive()
            else
              ElevatedButton(
                onPressed: () {
                  context.read<LoginBloc>().add(AuthorizationLoginEvent(
                        login: loginController.text,
                        password: passwordController.text,
                      ));
                },
                child: Text('${text?.signInButton}'),
              ),
            ElevatedButton(
              onPressed: () {
                widget.navigation.goToResetPassword();
              },
              child: Text('${text?.resetPasswordButton}'),
            ),
          ],
        );
      },
    );
  }
}
