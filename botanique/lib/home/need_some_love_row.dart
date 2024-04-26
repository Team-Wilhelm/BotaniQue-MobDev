import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class NeedSomeLoveRow extends StatelessWidget {
  const NeedSomeLoveRow({super.key});

  final String plantName = "Felix";
  final String plantNeed = "Pour some water";
  final String plantMood = "🥹";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary, width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            "https://img.freepik.com/free-vector/plant-emoji_78370-262.jpg?size=338&ext=jpg&ga=GA1.1.553209589.1713225600&semt=ais",
            fit: BoxFit.cover,
            height: getImageSize(context),
            width: getImageSize(context),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: plantName,
                fontSize: TextSizes.h5,
              ),
              AppText(text: plantNeed),
            ],
          ),
          AppText(
            text: plantMood,
            fontSize: TextSizes.h2,
          ),
        ],
      ),
    );
  }

  double getImageSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.15;
  }
}
