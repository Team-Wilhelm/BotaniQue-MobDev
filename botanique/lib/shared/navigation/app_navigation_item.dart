import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state/navigation_cubit.dart';

class AppNavigationItem extends StatelessWidget {
  const AppNavigationItem({
    super.key,
    required this.routeLabel,
    required this.label,
    required this.icon,
  });

  final String routeLabel;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NavigationCubit>();
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            cubit.changePage(routeLabel);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: cubit.state == routeLabel // TODO: fix
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
      },
    );
  }
}
