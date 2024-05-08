import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/server_events.dart';
import '../shared/app_button.dart';
import '../state/all_plants_bloc.dart';

class CategorySelection extends StatelessWidget {
  const CategorySelection({
    super.key,
    this.categories = const [
      "All Plants",
      "Kitchen",
      "Bedroom",
      "Bathroom",
      "Living Room"
    ],
  });

  final List<String> categories;

  // TODO: Implement build when BE is ready for collections
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPlantsBloc, ServerEvent>(
      bloc: context.read<AllPlantsBloc>(),
      builder: (context, snapshot) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: categories
                .map(
                  (category) => Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: AppButton(
                      text: category,
                      onPressed: () {
                        // context.read<AllPlantsBloc>().selectCategory(category);
                      },
                      buttonType: /*snapshot.selectedCategory == category
                          ? ButtonType.primary
                          : ButtonType.outline,*/
                          ButtonType.outline,
                      buttonShape: ButtonShape.rounded,
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
