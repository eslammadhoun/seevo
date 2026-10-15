import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

abstract final class DI {
  static Future<void> setupDI() async {}
}
