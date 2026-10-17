import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:seevo/core/router/app_routes.dart';
import 'package:seevo/core/theme/seevo_dimens.dart';
import 'package:seevo/core/theme/seevo_theme.dart';
import 'package:seevo/core/theme/seevo_typography.dart';

import '../../../../core/theme/seevo_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
      const Duration(seconds: 3),
      () => mounted ? context.push(AppRoutes.onBoarding) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    final SeevoColors colors = context.colors;
    final TextTheme textStyles = context.textStyles;

    return Scaffold(
      backgroundColor: context.colors.bgSplash,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Column(
              children: [
                Container(
                  width: 112,
                  height: 112,
                  decoration: BoxDecoration(
                    color: colors.textOnSplash,
                    borderRadius: BorderRadius.circular(SeevoRadius.xxl),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/app-icon.svg',
                      color: colors.bgSplash,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Seevo',
                  style: textStyles.displaySmall!.copyWith(
                    color: colors.textOnSplash,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Your AI eyes',
                  style: textStyles.bodyLarge!.copyWith(
                    color: colors.textOnSplash,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Text(
                'Private · Offline · On-device AI',
                style: textStyles.bodySmall!.copyWith(
                  color: colors.textOnSplash,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
