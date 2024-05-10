import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state/navigation_cubit.dart';
import '../../util/navigation_constants.dart';

class AppNavigationItem extends StatelessWidget {
  const AppNavigationItem({
    super.key,
    required this.routeLabel,
    required this.label,
    required this.icon,
    this.onTap,
  });

  final String routeLabel;
  final String label;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NavigationCubit>();
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            cubit.changePage(routeLabel);
            if (onTap != null) {
              onTap!();
            }
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: cubit.state.index ==
                          NavigationConstants.pageNameToIndex(routeLabel)
                      ? Theme.of(context).colorScheme.primary
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
