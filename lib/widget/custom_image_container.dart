import 'package:flutter/material.dart';

import 'item_pro_button.dart';

class CustomImageContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final TextAlign textAlign;
  final bool showItemProButton;

  const CustomImageContainer({
    super.key,
    required this.imagePath,
    required this.title,
    this.textAlign = TextAlign.center,
    this.showItemProButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 100,
              fit: BoxFit.cover,
            ),
            if (showItemProButton)
              const Positioned(
                top: -1,
                right: -1,
                child: SizedBox(
                  width: 36,
                  height: 16,
                  child: ItemProButton(),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: textAlign,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
