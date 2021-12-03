import 'package:auto_route/auto_route.dart';
import 'package:exchange_rates_challenge/app_router.dart';
import 'package:exchange_rates_challenge/di_container.dart';
import 'package:exchange_rates_challenge/ui/viewmodels/home_view_model.dart';
import 'package:exchange_rates_challenge/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final router = AutoRouter.of(context);

    return ChangeNotifierProvider(
      create: (_) => locator<HomeViewModel>()..loadRates(),
      child: Consumer<HomeViewModel>(builder:
          (BuildContext context, HomeViewModel viewModel, Widget? child) {
        if (viewModel.hasError) {
          SchedulerBinding.instance!.scheduleFrameCallback(
              (_) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(l10n.serverError),
                  )));
        }

        return AppLayout(
            appBarTitle: l10n.appTitle,
            appBarActions: <Widget>[
              if (!viewModel.isBusy && !viewModel.hasError)
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () async {
                    final bool? result = await router.push<bool>(
                      SettingsRoute(
                        rates: viewModel.rates,
                      ),
                    );

                    if (result != null && result) {
                      viewModel.loadRates();
                    }
                  },
                )
            ],
            body: viewModel.isBusy
                ? const Center(child: CircularProgressIndicator())
                : RatesTable(
                    onRefresh: viewModel.loadRates,
                    headerRow: <RatesTableCell>[
                      const RatesTableCell(
                        flex: 4,
                        child: Text(''),
                      ),
                      RatesTableCell(
                        flex: 2,
                        child: Text(
                          DateFormat('dd.MM.yyyy').format(DateTime.now()),
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      RatesTableCell(
                        flex: 2,
                        child: Text(
                          DateFormat('dd.MM.yyyy').format(
                              DateTime.now().add(const Duration(days: 1))),
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                    itemsCount: viewModel.sortedRates.length,
                    dataRowBuilder: (BuildContext context, int index) {
                      final rate = viewModel.sortedRates[index];

                      return Column(
                        key: Key(rate.id.toString()),
                        children: [
                          Row(
                            children: <RatesTableCell>[
                              RatesTableCell(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        rate.abbreviation,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                          '${rate.scale} ${rate.name.toLowerCase()}',
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.caption)
                                    ],
                                  )),
                              RatesTableCell(
                                  flex: 2,
                                  child: Text(
                                    rate.todayRate.toString(),
                                    textAlign: TextAlign.right,
                                  )),
                              RatesTableCell(
                                  flex: 2,
                                  child: Text(
                                    rate.tomorrowRate.toString(),
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ));
      }),
    );
  }
}
