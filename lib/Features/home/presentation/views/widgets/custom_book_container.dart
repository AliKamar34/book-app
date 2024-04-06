import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.amber,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
