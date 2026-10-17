import 'package:flutter/material.dart';
import 'package:seevo/core/router/app_router.dart';
import 'core/theme/seevo_theme.dart';

class SeevoApp extends StatelessWidget {
  const SeevoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Seevo',
      debugShowCheckedModeBanner: false,
      theme: SeevoTheme.light,
      darkTheme: SeevoTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.appRouter,
    );
  }
}
