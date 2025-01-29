import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mm_template/generated/locale_keys.g.dart';

class {{# pascalCase}}{{name}}{{/ pascalCase}}LocalizationAdapterImpl extends {{# pascalCase}}{{name}}{{/ pascalCase}}LocalizationAdapter {
  @override
  String get title => throw UnimplementedError();
}
