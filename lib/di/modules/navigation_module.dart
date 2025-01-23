import 'package:injectable/injectable.dart';
import 'package:mm_template/router/router.dart';

@module
abstract class NavigationModule {
  @singleton
  AppRouter appRouter() => AppRouter();
}
