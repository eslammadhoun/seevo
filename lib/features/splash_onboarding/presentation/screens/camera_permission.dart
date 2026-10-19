import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seevo/core/router/app_routes.dart';
import 'package:seevo/core/theme/seevo_theme.dart';
import 'package:seevo/core/utils/extensions.dart';
import 'package:seevo/features/splash_onboarding/presentation/bloc/permission_event.dart';
import '../../../../core/di/sl.dart';
import '../bloc/permission_bloc.dart';
import '../bloc/permission_state.dart';

class CameraPermission extends StatelessWidget {
  const CameraPermission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 104.w,
                  height: 104.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colors.bgBrandSubtle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/camera.svg',
                      color: context.colors.iconBrand,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Text(
              context.l10n.cameraPermissionTitle,
              style: context.textStyles.titleLarge!.copyWith(
                color: context.colors.textPrimary,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              context.l10n.cameraPermissionDescription,
              style: context.textStyles.bodyLarge!.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              width: 342.w,
              height: 174.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  width: 1.w,
                  color: context.colors.borderDefault,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
                color: context.colors.bgSurface,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  3,
                  (index) => ListTile(
                    leading: SvgPicture.asset(
                      index == 0
                          ? 'assets/icons/check.svg'
                          : index == 1
                          ? 'assets/icons/wifi-off.svg'
                          : 'assets/icons/settings.svg',
                    ),
                    title: Text(
                      index == 0
                          ? context.l10n.cameraPermissionPromise1
                          : index == 1
                          ? context.l10n.cameraPermissionPromise2
                          : context.l10n.cameraPermissionPromise3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 79.h),
            BlocProvider<PermissionBloc>(
              create: (BuildContext context) => sl<PermissionBloc>(),
              child: BlocConsumer<PermissionBloc, PermissionState>(
                listener: (BuildContext context, state) {
                  if (state.cameraPermissionStatus ==
                      PermissionStatus.granted) {
                    context.go(AppRoutes.detection);
                  } else {
                    context.go(AppRoutes.cameraPermissionDenied);
                  }
                },
                builder: (BuildContext context, state) {
                  return GestureDetector(
                    onTap: () => context.read<PermissionBloc>().add(
                      const PermissionEvent.requestCameraPermission(),
                    ),
                    child: Container(
                      width: 342.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: context.colors.bgBrand,
                      ),
                      child: Center(
                        child: Row(
                          textDirection:
                              Directionality.of(context) == TextDirection.ltr
                              ? TextDirection.rtl
                              : TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              context.l10n.cameraPermissionAllowCamera,
                              style: context.textStyles.labelLarge!.copyWith(
                                color: context.colors.textOnBrand,
                              ),
                            ),
                            SizedBox(width: 12.w),
                            SvgPicture.asset(
                              'assets/icons/camera.svg',
                              color: context.colors.textOnBrand,
                              width: 24.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24.h),
            GestureDetector(
              onTap: () => context.go(AppRoutes.cameraPermissionDenied),
              child: SizedBox(
                width: 342.w,
                height: 64.h,
                child: Center(
                  child: Text(
                    context.l10n.cameraPermissionNotNow,
                    style: context.textStyles.labelLarge!.copyWith(
                      color: context.colors.textBrand,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
