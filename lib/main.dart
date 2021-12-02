import 'dart:io';

import 'package:exchange_rates_challenge/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MaterialApp(
    onGenerateTitle: (BuildContext context) =>
        AppLocalizations.of(context)!.appTitle,
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    locale: Locale(Platform.localeName.split('_')[0]),
    supportedLocales: AppLocalizations.supportedLocales,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: App(),
  ));
}
