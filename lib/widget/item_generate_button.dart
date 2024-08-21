import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/icon_paths.dart';
import '../utils/titles.dart';

class ItemGenerateButton extends StatelessWidget {
  const ItemGenerateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF171C2F),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: SizedBox(
        width: 150,  // Set your desired width
        height: 40,  // Set your desired height
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFFCEAA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,  // Center the content
            children: [
              SvgPicture.asset(
                IconPaths.bling,
                color: Colors.black,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 5),
              const Text(
                Titles.generate,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
