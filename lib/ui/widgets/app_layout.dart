import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final String appBarTitle;
  final List<Widget> appBarActions;
  final Widget body;

  const AppLayout({
    Key? key,
    this.appBarActions = const [],
    this.appBarTitle = '',
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: appBarActions,
        centerTitle: true,
      ),
      body: body,
    );
  }
}
