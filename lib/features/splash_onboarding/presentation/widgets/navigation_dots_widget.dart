import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:seevo/core/theme/seevo_theme.dart';

class NavigationDotsWidget extends StatelessWidget {
  final int currentIndex;
  const NavigationDotsWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: List.generate(3, (index) {
        final bool isSelected = index + 1 == currentIndex;
        return Container(
          width: isSelected ? 28.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: isSelected ? context.colors.bgBrand : context.colors.borderStrong,
            borderRadius: BorderRadius.circular(4.r)
          ),
        );
      }),
    );
  }
}
