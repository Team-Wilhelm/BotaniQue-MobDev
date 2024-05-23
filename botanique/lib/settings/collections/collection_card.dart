import 'package:botanique/models/models/collections.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({super.key, required this.collection, required this.onEditTapped, required this.onDeleteTapped});

  final GetCollectionDto collection;
  final VoidCallback onEditTapped;
  final VoidCallback onDeleteTapped;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: AppText(text: collection.name),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppIconButton(onPressed: onEditTapped, icon: Icons.edit),
                AppIconButton(onPressed: onDeleteTapped, icon: Icons.delete)
              ],
            )
          ],
        ),
      ),
    );
  }
}
