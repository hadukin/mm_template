import 'package:authorization/authorization.dart';
import 'package:core/localization_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mm_template/di/di.dart';
import 'package:mm_template/features/authorization/integrations/authorization_localization_adapter.dart';
import 'package:mm_template/features/authorization/integrations/authorization_navigation_adapter.dart';
import 'package:mm_template/router/router.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LocalizationProvider<LoginLocalizationAdapter>(
      text: AuthorizationLocalizationAdapterImpl(),
      child: BlocProvider(
        create: (context) => LoginBloc(
          router: AuthorizationNavigationAdapterImpl(inject()),
          service: inject(),
        ),
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(context.l<LoginLocalizationAdapter>().text.appBarTitle.tr()),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    AuthorizationView(
                      navigation: AuthorizationNavigationAdapterImpl(
                        inject(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
