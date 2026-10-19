// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Seevo';

  @override
  String get splashSubTitle => 'Your AI eyes';

  @override
  String get splashPrivacyPolicy => 'Private · Offline · On-device AI';

  @override
  String get onBoardingSkip => 'Skip';

  @override
  String get onBoardingDetectionExample => 'Laptop, ahead';

  @override
  String get onBoardingTitle1 => 'Point. See, Know';

  @override
  String get onBoardingDescription1 =>
      'Aim your camera at anything and Seevo instantly tells you what it sees — with boxes on screen and a voice in your ear.';

  @override
  String get onBoardingTitle2 => 'Private by design';

  @override
  String get onBoardingDescription2 =>
      'All AI runs on your phone. Seevo works offline and your images never leave your device.';

  @override
  String get onBoardingTitle3 => 'Made for everyone';

  @override
  String get onBoardingDescription3 =>
      'Seevo speaks what it sees, vibrates on new objects and works fully with VoiceOver and TalkBack.';

  @override
  String get onBoardingContinueButton => 'Continue';

  @override
  String get onBoardingGetStartedButton => 'Get Started';

  @override
  String get cameraPermissionTitle => 'Allow camera access';

  @override
  String get cameraPermissionDescription =>
      'Seevo needs your camera to recognise objects around you.';

  @override
  String get cameraPermissionPromise1 =>
      'Images are processed on your phone only';

  @override
  String get cameraPermissionPromise2 => 'Works offline — nothing is uploaded';

  @override
  String get cameraPermissionPromise3 => 'Change this anytime in Settings';

  @override
  String get cameraPermissionAllowCamera => 'Allow camera';

  @override
  String get cameraPermissionNotNow => 'Not now';

  @override
  String get cameraPermissionDeniedTitle => 'Camera access is off';

  @override
  String get cameraPermissionDeniedDescription =>
      'Live detection needs the camera. You can turn it on in your phone settings, or analyse a photo from your gallery instead.';

  @override
  String get cameraPermissionDeniedOpenSettings => 'Open Settings';

  @override
  String get cameraPermissionDeniedPickPhoto => 'Pick a photo instead';
}
