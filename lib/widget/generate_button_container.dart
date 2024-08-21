import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/icon_paths.dart';
import 'item_generate_button.dart';

class GenerateButtonContainer extends StatelessWidget {
  const GenerateButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 32, // Adjusted size for the IconButton
            icon: SvgPicture.asset(
              IconPaths.exit,
              width: 32,
              height: 30, // Set width and height for the icon
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const ItemGenerateButton(),
          IconButton(
            iconSize: 32, // Adjusted size for the IconButton
            icon: SvgPicture.asset(
              IconPaths.done,
              color: Colors.grey,
              width: 32,
              height: 30, // Set width and height for the icon
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
