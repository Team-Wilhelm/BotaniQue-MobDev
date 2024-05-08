import 'package:flutter/material.dart';

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
    return Placeholder(); /*BlocBuilder<AllPlantsBloc, ServerEvent>(
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
                          context
                              .read<AllPlantsBloc>()
                              .selectCategory(category);
                        },
                        buttonType: snapshot.selectedCategory == category
                            ? ButtonType.primary
                            : ButtonType.outline,
                        buttonShape: ButtonShape.rounded,
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
        );
         */
  }
}
