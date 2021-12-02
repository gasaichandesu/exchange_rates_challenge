import 'package:exchange_rates_challenge/di_container.dart';
import 'package:exchange_rates_challenge/ui/constants.dart';
import 'package:exchange_rates_challenge/ui/viewmodels/home_view_model.dart';
import 'package:exchange_rates_challenge/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

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
          appBarActions: viewModel.hasError
              ? const <Widget>[]
              : <Widget>[
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
          body: viewModel.isBusy
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Container(
                      color: theme.secondaryHeaderColor,
                      padding: const EdgeInsets.all(kPadding),
                      child: Row(
                        children: <Widget>[
                          const Expanded(flex: 4, child: Text('')),
                          Expanded(
                              flex: 2,
                              child: Text(
                                  DateFormat('dd.MM.yyyy')
                                      .format(DateTime.now()),
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))),
                          Expanded(
                              flex: 2,
                              child: Text(
                                DateFormat('dd.MM.yyyy').format(DateTime.now()
                                    .add(const Duration(days: 1))),
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () => viewModel.loadRates(),
                        child: ListView.separated(
                          padding: const EdgeInsets.all(kPadding),
                          itemCount: viewModel.rates.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            final rate = viewModel.rates.elementAt(index);

                            return Row(
                              children: <Widget>[
                                Expanded(
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
                                Expanded(
                                    flex: 2,
                                    child: Text(
                                      rate.todayRate.toString(),
                                      textAlign: TextAlign.right,
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Text(
                                      rate.tomorrowRate.toString(),
                                      textAlign: TextAlign.right,
                                    )),
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
        );
      }),
    );
  }
}
