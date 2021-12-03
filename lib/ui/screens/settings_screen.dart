import 'package:auto_route/auto_route.dart';
import 'package:exchange_rates_challenge/di_container.dart';
import 'package:exchange_rates_challenge/ui/models/models.dart';
import 'package:exchange_rates_challenge/ui/viewmodels/settings_view_model.dart';
import 'package:exchange_rates_challenge/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  final List<ViewRate> rates;

  const SettingsScreen({
    Key? key,
    required this.rates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final router = AutoRouter.of(context);
    final theme = Theme.of(context);

    return ChangeNotifierProvider(
      create: (_) => locator<SettingsViewModel>(param1: rates),
      child: Consumer<SettingsViewModel>(
        builder:
            (BuildContext context, SettingsViewModel viewModel, Widget? child) {
          return AppLayout(
            appBarTitle: l10n.settingsTitle,
            appBarActions: [
              IconButton(
                icon: const Icon(Icons.check),
                onPressed: () async {
                  await viewModel.onSave();

                  router.pop<bool>(true);
                },
              ),
            ],
            body: RatesTable(
              itemsCount: viewModel.rates.length,
              headerRow: const <RatesTableCell>[],
              onReorder: viewModel.onReorder,
              dataRowBuilder: (BuildContext context, int index) {
                final rate = viewModel.rates[index];

                return Column(
                  key: Key(rate.id.toString()),
                  children: [
                    Row(
                      children: <RatesTableCell>[
                        RatesTableCell(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  rate.abbreviation,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('${rate.scale} ${rate.name.toLowerCase()}',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.caption)
                              ],
                            )),
                        RatesTableCell(
                            flex: 2,
                            child: Switch(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: rate.isEnabled,
                              onChanged: (bool value) =>
                                  viewModel.switchRate(index, value),
                            )),
                        RatesTableCell(
                            flex: 2,
                            child: ReorderableDragStartListener(
                                index: index,
                                child: const Icon(
                                  Icons.menu,
                                ))),
                      ],
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
