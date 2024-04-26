import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state/current_page_cubit.dart';

class AppNavigationItem extends StatelessWidget {
  const AppNavigationItem({
    super.key,
    required this.routeIndex,
    required this.label,
    required this.icon,
  });

  final int routeIndex;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CurrentPageCubit>();
    return BlocBuilder<CurrentPageCubit, int>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          cubit.changePage(routeIndex);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(
                color: cubit.state == routeIndex
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.transparent,
                width: 2,
              ),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
