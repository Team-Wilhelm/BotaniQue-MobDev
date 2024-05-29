import 'package:botanique/models/enums/app_enums.dart';
import 'package:botanique/models/models/collections.dart';
import 'package:botanique/shared/app_card.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    super.key,
    required this.collection,
    required this.onEditTapped,
    required this.onDeleteTapped,
  });

  final GetCollectionDto collection;
  final VoidCallback onEditTapped;
  final VoidCallback onDeleteTapped;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: AppText(text: collection.name)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppIconButton(onPressed: onEditTapped, icon: Icons.edit),
              AppIconButton(
                onPressed: onDeleteTapped,
                icon: Icons.delete,
                buttonType: ButtonType.warning,
              ),
            ],
          )
        ],
      ),
    );
  }
}
