import 'dart:io';

import 'package:exchange_rates_challenge/di_container.dart';
import 'package:exchange_rates_challenge/ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await dotenv.load();

  configureDependencies();

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
    home: const HomePage(),
  ));
}
