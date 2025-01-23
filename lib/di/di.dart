import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mm_template/di/di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: false, // default
  asExtension: true, // default
  generateForDir: ['lib'],
)
Future<void> configureDi() => getIt.init();

T inject<T extends Object>({
  String? instanceName,
}) =>
    getIt.get<T>(
      instanceName: instanceName,
    );
