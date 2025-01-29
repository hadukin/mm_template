library {{name}};

export './src/navigation/{{name.snakeCase()}}_navigation_adapter.dart';
export './src/ui/settings/text/{{name.snakeCase()}}_localization_adapter.dart';
export './src/ui/settings/view/{{name.snakeCase()}}_view.dart';
export './src/ui/settings/view/{{name.snakeCase()}}_bloc.dart';
export './src/data/{{name.snakeCase()}}_repository.dart';
export './src/domain/{{name.snakeCase()}}_entity.dart';
