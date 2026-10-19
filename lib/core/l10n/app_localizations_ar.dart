// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Seevo';

  @override
  String get splashSubTitle => 'عين الذكاء الاصطناعي';

  @override
  String get splashPrivacyPolicy => 'خاص · بلا انترنت · ذكاء اصطناعي محلي ';

  @override
  String get onBoardingSkip => 'تخطي';

  @override
  String get onBoardingDetectionExample => 'لابتوب, في الامام';

  @override
  String get onBoardingTitle1 => 'صوب. انظر، اعرف';

  @override
  String get onBoardingDescription1 =>
      'وجّه كاميرتك نحو أي شيء، وسيخبرك Seevo على الفور بما يراه - مع مربعات على الشاشة وصوت في أذنك.';

  @override
  String get onBoardingTitle2 => 'صمم خاص';

  @override
  String get onBoardingDescription2 =>
      'جميع تقنيات الذكاء الاصطناعي تعمل على هاتفك. يعمل تطبيق Seevo دون اتصال بالإنترنت، ولا تغادر صورك جهازك أبدًا.';

  @override
  String get onBoardingTitle3 => 'صنع للجميع';

  @override
  String get onBoardingDescription3 =>
      'ينطق Seevo بما يراه، ويهتز عند رؤية أشياء جديدة، ويعمل بشكل كامل مع VoiceOver و TalkBack.';

  @override
  String get onBoardingContinueButton => 'استمر';

  @override
  String get onBoardingGetStartedButton => 'ابدأ';

  @override
  String get cameraPermissionTitle => 'السماح بالوصول للكاميرا';

  @override
  String get cameraPermissionDescription =>
      'Seevo يحتاج الوصول للكاميرا للتعرف على الاجسام من حولك';

  @override
  String get cameraPermissionPromise1 => 'الصور تعالج على جهازك فقط';

  @override
  String get cameraPermissionPromise2 =>
      'يعمل بشكل محلي - لا شيئ يرفع على الانترنت';

  @override
  String get cameraPermissionPromise3 =>
      'يمكنك تغيير هذا في اي وقت من الأعدادات';

  @override
  String get cameraPermissionAllowCamera => 'السماح للكاميرا';

  @override
  String get cameraPermissionNotNow => 'ليس الأن';

  @override
  String get cameraPermissionDeniedTitle => 'الوصول للكاميرا غير مفعل';

  @override
  String get cameraPermissionDeniedDescription =>
      'التعرف اللحظي يحتاج كاميرا. يمكنك تفعيلها من اعدادات الهاتف, او تعرف على صورة من معرض الصور بدلاً من ذالك';

  @override
  String get cameraPermissionDeniedOpenSettings => 'افتح الأعدادات';

  @override
  String get cameraPermissionDeniedPickPhoto => 'اختر صورة بدلاً من ذالك';
}
