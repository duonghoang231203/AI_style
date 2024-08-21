import 'package:flutter/cupertino.dart';
import '../utils/images.dart';

class EditMainContainer extends StatelessWidget {
  const EditMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Images.leftImg,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
