import 'package:botanique/shared/app_button.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPlantsCubit, AllPlantsState>(
        bloc: context.read<AllPlantsCubit>(),
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
                          context
                              .read<AllPlantsCubit>()
                              .selectCategory(category);
                        },
                        buttonType: snapshot.selectedCategory == category
                            ? ButtonType.primary
                            : ButtonType.outline,
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        });
  }
}
