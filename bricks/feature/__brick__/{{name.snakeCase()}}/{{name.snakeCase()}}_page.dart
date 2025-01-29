import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import 'package:core/localization_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mm_template/di/di.dart';
import 'package:mm_template/router/router.dart';
import 'package:mm_template/features/{{name.snakeCase()}}/integrations/{{name.snakeCase()}}_localization_adapter.dart';
import 'package:mm_template/features/{{name.snakeCase()}}/integrations/{{name.snakeCase()}}_navigation_adapter.dart';

@RoutePage()
class {{# pascalCase}}{{name}}{{/ pascalCase}}Page extends StatelessWidget {
  const {{# pascalCase}}{{name}}{{/ pascalCase}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return LocalizationProvider<{{# pascalCase}}{{name}}{{/ pascalCase}}LocalizationAdapter>(
      text: {{# pascalCase}}{{name}}{{/ pascalCase}}LocalizationAdapterImpl(),
      child: BlocProvider(
        create: (context) => {{# pascalCase}}{{name}}{{/ pascalCase}}Bloc(
          router: {{# pascalCase}}{{name}}{{/ pascalCase}}NavigationAdapterImpl(inject()),
          service: inject(),
        ),
        child: BlocBuilder<{{# pascalCase}}{{name}}{{/ pascalCase}}Bloc, {{# pascalCase}}{{name}}{{/ pascalCase}}State>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(context.l<{{# pascalCase}}{{name}}{{/ pascalCase}}LocalizationAdapter>().text.appBarTitle.tr()),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    {{# pascalCase}}{{name}}{{/ pascalCase}}View(
                      navigation: {{# pascalCase}}{{name}}{{/ pascalCase}}NavigationAdapterImpl(
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
