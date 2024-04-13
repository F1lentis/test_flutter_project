import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/functions/app.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
      EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ru')],
          path: 'assets/languages',
          fallbackLocale: const Locale('en'),
          child: MyApp())
  );
}





