import 'package:exchange_rates_challenge/ui/constants.dart';
import 'package:exchange_rates_challenge/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RatesTable extends StatelessWidget {
  final List<RatesTableCell> headerRow;

  final IndexedWidgetBuilder dataRowBuilder;
  final Future<void> Function()? onRefresh;
  final ReorderCallback? onReorder;
  final int itemsCount;

  const RatesTable({
    Key? key,
    required this.headerRow,
    required this.dataRowBuilder,
    required this.itemsCount,
    this.onRefresh,
    this.onReorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: <Widget>[
        Container(
          height: kPadding * 1.5,
          padding: const EdgeInsets.symmetric(horizontal: kPadding / 2),
          decoration: BoxDecoration(
              color: theme.secondaryHeaderColor,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: theme.backgroundColor,
                    blurRadius: 8.0,
                    offset: const Offset(
                      3.0,
                      3.0,
                    ))
              ]),
          child: Row(
            children: headerRow,
          ),
        ),
        Expanded(child: _buildTableBody()),
      ],
    );
  }

  Widget _buildTableBody() {
    Widget child = ReorderableListView.builder(
      itemBuilder: dataRowBuilder,
      itemCount: itemsCount,
      onReorder: onReorder == null ? (_, __) {} : onReorder!,
      padding: const EdgeInsets.all(kPadding),
      buildDefaultDragHandles: false,
    );

    if (onRefresh != null) {
      child = RefreshIndicator(
        onRefresh: onRefresh!,
        child: child,
      );
    }

    return child;
  }
}
