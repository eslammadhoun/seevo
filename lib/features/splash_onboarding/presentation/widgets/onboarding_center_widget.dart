import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seevo/core/theme/seevo_dimens.dart';
import 'package:seevo/core/theme/seevo_theme.dart';

import '../../../../core/utils/extensions.dart';

class OnboardingCenterWidget extends StatelessWidget {
  final int currentIndex;
  const OnboardingCenterWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> onBoardingContent = [
      {
        'icon': 'onboarding-first-icon',
        'title': context.l10n.onBoardingTitle1,
        'description': context.l10n.onBoardingDescription1,
      },
      {
        'icon': 'onboarding-second-icon',
        'title': context.l10n.onBoardingTitle2,
        'description': context.l10n.onBoardingDescription2,
      },
      {
        'icon': 'onboarding-third-icon',
        'title': context.l10n.onBoardingTitle3,
        'description': context.l10n.onBoardingDescription3,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 342.w,
          height: 280.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SeevoSpacing.xxl.r),
            color: context.colors.bgBrandSubtle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 128.w,
                height: 128.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.bgBrand,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/${onBoardingContent[currentIndex - 1]['icon']}.svg',
                    color: context.colors.iconOnBrand,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              currentIndex == 1 ? Container(
                width: 190.w,
                height: 52.h,
                decoration: BoxDecoration(
                  color: context.colors.overlayGlass,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.bgAccent,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/speaker.svg',
                          width: 18.w,
                        ),
                      ),
                    ),
                    Text(
                      '“${context.l10n.onBoardingDetectionExample}”',
                      style: context.textStyles.bodyMedium!.copyWith(
                        color: context.colors.textOnCamera,
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ) : SizedBox(),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        Text(
          onBoardingContent[currentIndex - 1]['title'] ?? 'title',
          style: context.textStyles.titleLarge!.copyWith(
            color: context.colors.textPrimary,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
    onBoardingContent[currentIndex - 1]['description'] ?? 'description',
          style: context.textStyles.bodyLarge!.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
      ],
    );
  }
}
