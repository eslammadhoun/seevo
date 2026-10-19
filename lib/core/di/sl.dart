import 'package:get_it/get_it.dart';
import 'package:seevo/core/local_storage/app_preferences.dart';
import 'package:seevo/core/permissions/camera_permission_imp.dart';
import 'package:seevo/core/permissions/permission_repository.dart';

import '../../features/splash_onboarding/presentation/bloc/permission_bloc.dart';

final GetIt sl = GetIt.instance;

abstract final class DI {
  static Future<void> setupDI() async {
    // App Shared Preferences
    final AppPreferences prefs = await AppPreferences.create();
    sl.registerLazySingleton<AppPreferences>(() => prefs);

    // repositories
    sl.registerLazySingleton<PermissionRepository>(
      () => CameraPermissionRepositoryImp(appPreferences: sl<AppPreferences>()),
    );

    // Bloc
    sl.registerFactory(
      () => PermissionBloc(
        permissionRepository: sl<PermissionRepository>(),
      ),
    );
  }
}
