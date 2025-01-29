import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.freezed.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_event.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';



class {{# pascalCase}}{{name}}{{/ pascalCase}}Bloc extends Bloc<{{# pascalCase}}{{name}}{{/ pascalCase}}Event, {{# pascalCase}}{{name}}{{/ pascalCase}}State> {
  {{# pascalCase}}{{name}}{{/ pascalCase}}Bloc() : super(const {{# pascalCase}}{{name}}{{/ pascalCase}}State()) {
    on<{{# pascalCase}}{{name}}{{/ pascalCase}}Event>(
      (event, emit) => switch (event) {
        final {{# pascalCase}}{{name}}{{/ pascalCase}}InitialEvent event => _onInitial(event, emit),
      },
    );
  }

  Future<void> _onInitial(
    {{# pascalCase}}{{name}}{{/ pascalCase}}InitialEvent event, 
    Emitter<{{# pascalCase}}{{name}}{{/ pascalCase}}State> emit,
  ) async {}
}
