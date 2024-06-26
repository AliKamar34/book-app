import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, 
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 14,
        ),
        const SizedBox(
          width: 6,
        ),
         const Text(
          '0',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(0)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
