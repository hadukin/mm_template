part of '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

sealed class {{# pascalCase}}{{name}}{{/ pascalCase}}Event {
  const {{# pascalCase}}{{name}}{{/ pascalCase}}Event();
}

class {{# pascalCase}}{{name}}{{/ pascalCase}}InitialEvent extends {{# pascalCase}}{{name}}{{/ pascalCase}}Event {
  const {{# pascalCase}}{{name}}{{/ pascalCase}}InitialEvent();
}
