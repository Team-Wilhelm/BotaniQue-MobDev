import 'package:flutter/material.dart';

import '../../models/models/conditions.dart';

class HistoricConditionsGraph extends StatelessWidget {
  const HistoricConditionsGraph({
    super.key,
    this.conditionsLogs,
  });

  final List<ConditionsLog>? conditionsLogs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: const Placeholder(),
    );
  }
}
