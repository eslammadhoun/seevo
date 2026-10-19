import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seevo/core/router/camera_route.dart';
import 'package:seevo/core/theme/seevo_dimens.dart';
import 'package:seevo/core/theme/seevo_theme.dart';
import 'package:seevo/core/utils/extensions.dart';
import 'package:seevo/features/splash_onboarding/presentation/bloc/permission_bloc.dart';
import 'package:seevo/features/splash_onboarding/presentation/bloc/permission_state.dart';
import 'package:seevo/features/splash_onboarding/presentation/widgets/onboarding_center_widget.dart';
import '../../../../core/di/sl.dart';
import '../../../../core/local_storage/app_preferences.dart';
import '../widgets/navigation_dots_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 1;

  /// Leaving onboarding (Skip or Get Started): never show it again.
  void navigate(PermissionStatus cameraPermissionStatus) {
    sl<AppPreferences>().setSeenOnboardingStatus(true);
    context.go(cameraRouteFor(cameraPermissionStatus));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermissionBloc, PermissionState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SeevoSpacing.xl.h,
            ),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: SeevoSpacing.lg.sp),
                  currentIndex != 3
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () =>
                                  navigate(state.cameraPermissionStatus),
                              child: Text(
                                context.l10n.onBoardingSkip,
                                style: context.textStyles.labelMedium!.copyWith(
                                  color: context.colors.textBrand,
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 24.h),
                  OnboardingCenterWidget(currentIndex: currentIndex),
                  const Spacer(),
                  NavigationDotsWidget(currentIndex: currentIndex),
                  SizedBox(height: 24.h),
                  GestureDetector(
                    onTap: () => setState(() {
                      currentIndex == 3
                          ? navigate(state.cameraPermissionStatus)
                          : null;
                      currentIndex <= 2 ? currentIndex++ : null;
                    }),
                    child: Container(
                      width: 342.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: context.colors.bgBrand,
                      ),
                      child: Center(
                        child: Text(
                          currentIndex == 3
                              ? context.l10n.onBoardingGetStartedButton
                              : context.l10n.onBoardingContinueButton,
                          style: context.textStyles.labelLarge!.copyWith(
                            color: context.colors.textOnBrand,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
