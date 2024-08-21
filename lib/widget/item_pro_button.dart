import 'package:flutter/material.dart';
import '../utils/titles.dart';

class ItemProButton extends StatelessWidget {
  const ItemProButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Elevated Button
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10.0)),
            gradient: const LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.orangeAccent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
            ),
            child: const Text(
              Titles.pro,
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
