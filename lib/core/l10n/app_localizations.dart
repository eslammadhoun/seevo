import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Seevo'**
  String get appName;

  /// No description provided for @splashSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Your AI eyes'**
  String get splashSubTitle;

  /// No description provided for @splashPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Private · Offline · On-device AI'**
  String get splashPrivacyPolicy;

  /// No description provided for @onBoardingSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onBoardingSkip;

  /// No description provided for @onBoardingDetectionExample.
  ///
  /// In en, this message translates to:
  /// **'Laptop, ahead'**
  String get onBoardingDetectionExample;

  /// No description provided for @onBoardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Point. See, Know'**
  String get onBoardingTitle1;

  /// No description provided for @onBoardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Aim your camera at anything and Seevo instantly tells you what it sees — with boxes on screen and a voice in your ear.'**
  String get onBoardingDescription1;

  /// No description provided for @onBoardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Private by design'**
  String get onBoardingTitle2;

  /// No description provided for @onBoardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'All AI runs on your phone. Seevo works offline and your images never leave your device.'**
  String get onBoardingDescription2;

  /// No description provided for @onBoardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Made for everyone'**
  String get onBoardingTitle3;

  /// No description provided for @onBoardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'Seevo speaks what it sees, vibrates on new objects and works fully with VoiceOver and TalkBack.'**
  String get onBoardingDescription3;

  /// No description provided for @onBoardingContinueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onBoardingContinueButton;

  /// No description provided for @onBoardingGetStartedButton.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onBoardingGetStartedButton;

  /// No description provided for @cameraPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'Allow camera access'**
  String get cameraPermissionTitle;

  /// No description provided for @cameraPermissionDescription.
  ///
  /// In en, this message translates to:
  /// **'Seevo needs your camera to recognise objects around you.'**
  String get cameraPermissionDescription;

  /// No description provided for @cameraPermissionPromise1.
  ///
  /// In en, this message translates to:
  /// **'Images are processed on your phone only'**
  String get cameraPermissionPromise1;

  /// No description provided for @cameraPermissionPromise2.
  ///
  /// In en, this message translates to:
  /// **'Works offline — nothing is uploaded'**
  String get cameraPermissionPromise2;

  /// No description provided for @cameraPermissionPromise3.
  ///
  /// In en, this message translates to:
  /// **'Change this anytime in Settings'**
  String get cameraPermissionPromise3;

  /// No description provided for @cameraPermissionAllowCamera.
  ///
  /// In en, this message translates to:
  /// **'Allow camera'**
  String get cameraPermissionAllowCamera;

  /// No description provided for @cameraPermissionNotNow.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get cameraPermissionNotNow;

  /// No description provided for @cameraPermissionDeniedTitle.
  ///
  /// In en, this message translates to:
  /// **'Camera access is off'**
  String get cameraPermissionDeniedTitle;

  /// No description provided for @cameraPermissionDeniedDescription.
  ///
  /// In en, this message translates to:
  /// **'Live detection needs the camera. You can turn it on in your phone settings, or analyse a photo from your gallery instead.'**
  String get cameraPermissionDeniedDescription;

  /// No description provided for @cameraPermissionDeniedOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get cameraPermissionDeniedOpenSettings;

  /// No description provided for @cameraPermissionDeniedPickPhoto.
  ///
  /// In en, this message translates to:
  /// **'Pick a photo instead'**
  String get cameraPermissionDeniedPickPhoto;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
