// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authorization/authorization.dart' as _i363;
import 'package:core/core.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mm_template/di/modules/authorization_module.dart' as _i444;
import 'package:mm_template/di/modules/core_module.dart' as _i941;
import 'package:mm_template/di/modules/navigation_module.dart' as _i463;
import 'package:mm_template/di/modules/profile_module.dart' as _i722;
import 'package:mm_template/router/router.dart' as _i60;
import 'package:mm_template/services/localization/service/localization_service.dart'
    as _i438;
import 'package:profile/profile.dart' as _i16;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    final navigationModule = _$NavigationModule();
    final authorizationModule = _$AuthorizationModule();
    final profileModule = _$ProfileModule();
    await gh.singletonAsync<_i494.SharedWrapper>(
      () => coreModule.sharedWrapper,
      preResolve: true,
    );
    gh.singleton<_i60.AppRouter>(() => navigationModule.appRouter());
    gh.singleton<_i363.UserStore>(
        () => authorizationModule.authorizationStore());
    gh.singleton<_i438.LocalizationService>(() => _i438.LocalizationService());
    gh.singleton<_i16.ProfileUserAdapter>(
        () => profileModule.profileUserAdapter(gh<_i363.UserStore>()));
    gh.singleton<_i363.AuthorizationService>(() => authorizationModule
        .authorizationService(authorizationStore: gh<_i363.UserStore>()));
    return this;
  }
}

class _$CoreModule extends _i941.CoreModule {}

class _$NavigationModule extends _i463.NavigationModule {}

class _$AuthorizationModule extends _i444.AuthorizationModule {}

class _$ProfileModule extends _i722.ProfileModule {}
