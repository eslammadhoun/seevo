import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'core/di/sl.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Show the Inter font licence on the About › Licences page (NFR-L1).
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Inter'], license);
  });
  await DI.setupDI();
  runApp(const SeevoApp());
}
