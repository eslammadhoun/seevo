import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seevo/core/permissions/permission_repository.dart';
import 'package:seevo/features/splash_onboarding/presentation/bloc/permission_event.dart';
import 'package:seevo/features/splash_onboarding/presentation/bloc/permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  final PermissionRepository permissionRepository;
  PermissionBloc({required this.permissionRepository})
    : super(const PermissionState()) {
    on<CheckCameraPermission>((event, emit) async {
      final PermissionStatus cameraPermissionStatus = await permissionRepository
          .checkPermission();
      emit(state.copyWith(cameraPermissionStatus: cameraPermissionStatus));
    });

    on<RequestCameraPermission>((event, emit) async {
      final PermissionStatus cameraPermissionStatus = await permissionRepository
          .requestPermission();

      emit(state.copyWith(cameraPermissionStatus: cameraPermissionStatus));
    });

    on<OpenSettings>((event, emit) async {
      await permissionRepository.openSettings();
    });
  }
}
