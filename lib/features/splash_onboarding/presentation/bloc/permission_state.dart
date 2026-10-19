import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_state.freezed.dart';

@freezed
abstract class PermissionState with _$PermissionState {
  const factory PermissionState({
    @Default(PermissionStatus.denied) PermissionStatus cameraPermissionStatus,
  }) = _PermissionState;
}
