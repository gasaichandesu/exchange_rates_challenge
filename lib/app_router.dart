import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rates_challenge/ui/screens/screens.dart';
import 'package:exchange_rates_challenge/ui/models/models.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute<bool>(
      page: SettingsScreen,
    )
  ],
)
class AppRouter extends _$AppRouter {}
