import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seevo/core/router/app_routes.dart';
import 'package:seevo/core/theme/seevo_theme.dart';
import 'package:seevo/core/utils/extensions.dart';

import '../bloc/permission_bloc.dart';
import '../bloc/permission_event.dart';
import '../bloc/permission_state.dart';

class CameraPermissionDenied extends StatefulWidget {
  const CameraPermissionDenied({super.key});

  @override
  State<CameraPermissionDenied> createState() => _CameraPermissionDeniedState();
}

class _CameraPermissionDeniedState extends State<CameraPermissionDenied> {
  late final AppLifecycleListener _appLifecycle;
  @override
  void initState() {
    super.initState();
    _appLifecycle = AppLifecycleListener(
      onResume: () => context.read<PermissionBloc>().add(
        const PermissionEvent.checkCameraPermission(),
      ),
    );
  }

  @override
  void dispose() {
    _appLifecycle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PermissionBloc, PermissionState>(
      listener: (context, state) {
        if (state.cameraPermissionStatus == PermissionStatus.granted) {
          context.go(AppRoutes.detection);
        }
      },
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 157.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 104.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.colors.bgDangerSubtle,
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/camera-off.svg'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Text(
                context.l10n.cameraPermissionDeniedTitle,
                style: context.textStyles.titleLarge!.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                context.l10n.cameraPermissionDeniedDescription,
                style: context.textStyles.bodyLarge!.copyWith(
                  color: context.colors.textSecondary,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => context.read<PermissionBloc>().add(
                  const PermissionEvent.openSettings(),
                ),
                child: Container(
                  width: 342.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: context.colors.bgBrand,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection:
                        Directionality.of(context) == TextDirection.ltr
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    children: [
                      Text(
                        context.l10n.cameraPermissionDeniedOpenSettings,
                        style: context.textStyles.labelLarge!.copyWith(
                          color: context.colors.textOnBrand,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      SvgPicture.asset(
                        'assets/icons/open-settings.svg',
                        color: context.colors.textOnBrand,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 342.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: context.colors.bgBrandSubtle,
                    border: BoxBorder.all(
                      width: 1.5.w,
                      color: context.colors.borderFocus,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection:
                        Directionality.of(context) == TextDirection.ltr
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    children: [
                      Text(
                        context.l10n.cameraPermissionDeniedPickPhoto,
                        style: context.textStyles.labelLarge!.copyWith(
                          color: context.colors.textBrand,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      SvgPicture.asset(
                        'assets/icons/photo.svg',
                        color: context.colors.textBrand,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
