import 'package:core/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:{{name.snakeCase()}}/src/ui/{{name.snakeCase()}}/text/{{name.snakeCase()}}_localization_adapter.dart';
import 'package:{{name.snakeCase()}}/src/ui/{{name.snakeCase()}}/view/{{name.snakeCase()}}_bloc.dart';

class {{# pascalCase}}{{name}}{{/ pascalCase}}View extends StatelessWidget {
  const {{# pascalCase}}{{name}}{{/ pascalCase}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{# pascalCase}}{{name}}{{/ pascalCase}}Bloc, {{# pascalCase}}{{name}}{{/ pascalCase}}State>(
      builder: (context, state) {
        final text = context.l<{{# pascalCase}}{{name}}{{/ pascalCase}}LocalizationAdapter>().text;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('{{# pascalCase}}{{name}}{{/ pascalCase}}'),
          ],
        );
      },
    );
  }
}
