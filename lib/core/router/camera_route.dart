import 'package:permission_handler/permission_handler.dart';
import 'package:seevo/core/router/app_routes.dart';

/// The screen to open for a given camera permission status.
String cameraRouteFor(PermissionStatus status) => switch (status) {
  PermissionStatus.granted || PermissionStatus.limited => AppRoutes.detection,
  PermissionStatus.permanentlyDenied ||
  PermissionStatus.restricted => AppRoutes.cameraPermissionDenied,
  // Not asked yet (or refused once on Android): show the explanation screen.
  PermissionStatus.denied ||
  PermissionStatus.provisional => AppRoutes.cameraPermissionPage,
};
