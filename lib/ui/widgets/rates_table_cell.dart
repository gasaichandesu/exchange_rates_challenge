import 'package:flutter/material.dart';

class RatesTableCell extends StatelessWidget {
  final int flex;
  final Widget child;

  const RatesTableCell({
    Key? key,
    required this.child,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: child,
    );
  }
}
