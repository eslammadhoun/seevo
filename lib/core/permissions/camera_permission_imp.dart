import 'package:permission_handler/permission_handler.dart';
import 'package:seevo/core/local_storage/app_preferences.dart';
import 'package:seevo/core/permissions/permission_repository.dart';

class CameraPermissionRepositoryImp implements PermissionRepository {
  CameraPermissionRepositoryImp({required this.appPreferences});
  final AppPreferences appPreferences;

  @override
  Future<PermissionStatus> checkPermission() async {
    final PermissionStatus status = await Permission.camera.status;
    return status;
  }

  @override
  Future<PermissionStatus> requestPermission() async {
    final PermissionStatus status = await Permission.camera.request();
    return status;
  }

  @override
  Future<bool> openSettings() => openAppSettings();
}
