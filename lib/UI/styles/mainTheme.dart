import 'package:flutter/material.dart';
import 'package:test_flutter_project/UI/styles/colors.dart';
import 'package:test_flutter_project/UI/styles/text_styles.dart';

final mainTheme = ThemeData(
    useMaterial3: true,
  primarySwatch: mainBlue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: mainTextTheme
);