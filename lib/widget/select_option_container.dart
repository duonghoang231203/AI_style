import 'package:flutter/material.dart';

import '../utils/images.dart';
import '../utils/titles.dart';
import 'custom_image_container.dart';

class SelectOptionContainer extends StatelessWidget {
  final double width;

  const SelectOptionContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildImageRow(
              items: [
                ItemView(imagePaths: Images.leftImg, titles: Titles.gentlemen, isPro: false),
                ItemView(imagePaths: Images.img2, titles: Titles.gentlemen, isPro: true),
                ItemView(imagePaths: Images.img3, titles: Titles.gentlemen, isPro: true),
                ItemView(imagePaths: Images.img4, titles: Titles.gentlemen, isPro: false),
                ItemView(imagePaths: Images.img5, titles: Titles.gentlemen, isPro: false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageRow({required List<ItemView> items}) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Row(
            children: [
              CustomImageContainer(
                imagePath: item.imagePaths,
                title: item.titles,
                textAlign: item.textAlign,
                showItemProButton: item.isPro,
              ),
            ]
          );
        },
      ),
    );
  }

}
class ItemView{
  final String imagePaths;
  final String titles;
  final TextAlign textAlign;
  final bool isPro;

  ItemView({
    required this.imagePaths,
    required this.titles,
    this.textAlign = TextAlign.start,
    this.isPro = false,
  });
}