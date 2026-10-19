import 'package:shared_preferences/shared_preferences.dart';

abstract final class _Keys {
  static const String _hasSeenOnboarding = 'hasSeenOnboarding';
}

class AppPreferences {
  final SharedPreferencesWithCache _preferences;
  AppPreferences._(this._preferences);

  static Future<AppPreferences> create() async {
    final SharedPreferencesWithCache prefs =
        await SharedPreferencesWithCache.create(
          cacheOptions: const SharedPreferencesWithCacheOptions(
            allowList: {_Keys._hasSeenOnboarding},
          ),
        );
    return AppPreferences._(prefs);
  }

  // OnBoarding
  bool get hasSeenOnboarding =>
      _preferences.getBool(_Keys._hasSeenOnboarding) ?? false;
  Future<void> setSeenOnboardingStatus(bool hasSeen) =>
      _preferences.setBool(_Keys._hasSeenOnboarding, hasSeen);
}
