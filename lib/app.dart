import 'package:flutter/material.dart';

import 'core/theme/seevo_theme.dart';
import 'core/theme/theme_preview_screen.dart';

/// Which theme to show. `system` follows the phone's light/dark setting.
/// (Replaced by the SettingsCubit in Sprint 5.)
enum SeevoThemeMode { system, light, dark }

class SeevoApp extends StatefulWidget {
  const SeevoApp({super.key});

  @override
  State<SeevoApp> createState() => _SeevoAppState();
}

class _SeevoAppState extends State<SeevoApp> {
  SeevoThemeMode _mode = SeevoThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seevo',
      debugShowCheckedModeBanner: false,
      theme: SeevoTheme.light,
      darkTheme: SeevoTheme.dark,
      themeMode: switch (_mode) {
        SeevoThemeMode.light => ThemeMode.light,
        SeevoThemeMode.dark => ThemeMode.dark,
        SeevoThemeMode.system => ThemeMode.system,
      },
      home: ThemePreviewScreen(
        mode: _mode,
        onModeChanged: (mode) => setState(() => _mode = mode),
      ),
    );
  }
}
