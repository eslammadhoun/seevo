import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:seevo/core/router/app_routes.dart';
import 'package:seevo/features/detection/presentation/detection_screen.dart';
import 'package:seevo/features/splash_onboarding/presentation/screens/camera_permission.dart';
import 'package:seevo/features/splash_onboarding/presentation/screens/camera_permission_denied.dart';
import 'package:seevo/features/splash_onboarding/presentation/screens/on_boarding_screen.dart';
import 'package:seevo/features/splash_onboarding/presentation/screens/splash_screen.dart';
import '../../features/splash_onboarding/presentation/bloc/permission_bloc.dart';
import '../../features/splash_onboarding/presentation/bloc/permission_event.dart';
import '../di/sl.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onBoarding,
        builder: (context, state) => BlocProvider<PermissionBloc>(
          create: (BuildContext context) =>
              sl<PermissionBloc>()..add(const CheckCameraPermission()),
          child: const OnBoardingScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.detection,
        builder: (context, state) => const DetectionScreen(),
      ),
      GoRoute(
        path: AppRoutes.cameraPermissionPage,
        builder: (context, state) => const CameraPermission(),
      ),
      GoRoute(
        path: AppRoutes.cameraPermissionDenied,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<PermissionBloc>(),
          child: const CameraPermissionDenied(),
        ),
      ),
    ],
  );
}
