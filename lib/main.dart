import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/base/theme/app_theme.dart';
import 'package:getx_pattern_starter_app/app/base/translations/app_translations.dart';
import 'package:getx_pattern_starter_app/app/routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: Pages.all,
    locale: const Locale('en', 'US'),
    translationsKeys: AppTranslation.translations,
  ));
}
