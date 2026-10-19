import 'package:freezed_annotation/freezed_annotation.dart';
part 'permission_event.freezed.dart';
@freezed
abstract class PermissionEvent with _$PermissionEvent {
  const factory PermissionEvent.checkCameraPermission() = CheckCameraPermission;
  const factory PermissionEvent.requestCameraPermission() =
      RequestCameraPermission;
  const factory PermissionEvent.openSettings() = OpenSettings;
}
