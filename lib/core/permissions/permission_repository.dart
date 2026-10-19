import 'package:permission_handler/permission_handler.dart';

abstract class PermissionRepository {
  Future<PermissionStatus> checkPermission();
  Future<PermissionStatus> requestPermission();
  Future<bool> openSettings();
}
