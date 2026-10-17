import 'package:go_router/go_router.dart';
import 'package:seevo/core/router/app_routes.dart';
import 'package:seevo/features/detection/presentation/detection_screen.dart';
import 'package:seevo/features/splash_onboarding/presentation/screens/on_boarding_screen.dart';
import 'package:seevo/features/splash_onboarding/presentation/screens/splash_screen.dart';

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
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.detection,
        builder: (context, state) => const DetectionScreen(),
      ),
    ],
  );
}
