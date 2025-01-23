import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mm_template/bootstrap.dart';
import 'package:mm_template/di/di.dart';
import 'package:mm_template/router/router.dart';

void main() {
  bootstrap(() => App(router: inject<AppRouter>()));
}

class App extends StatelessWidget {
  final AppRouter router;

  const App({
    super.key,
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Template',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerDelegate: AutoRouterDelegate(router),
      routeInformationParser: router.defaultRouteParser(includePrefixMatches: true),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: child!,
      ),
    );
  }
}
