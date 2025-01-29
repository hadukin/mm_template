import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import 'package:mm_template/router/router.dart';

final class {{# pascalCase}}{{name}}{{/ pascalCase}}NavigationAdapterImpl implements {{# pascalCase}}{{name}}{{/ pascalCase}}NavigationAdapter {
  final AppRouter router;
  {{# pascalCase}}{{name}}{{/ pascalCase}}NavigationAdapterImpl(this.router);
}
