import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/UI/homepage.dart';
import 'package:test_flutter_project/UI/styles/mainTheme.dart';

class LangButton extends StatelessWidget {
  Function() butFnx;
  LangButton({super.key, required this.butFnx});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: butFnx,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
          context.locale.toString(),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: mainTheme,
      home: const MyHomePage(title: ''),
    );
  }
}