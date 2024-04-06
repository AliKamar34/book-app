import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          '4.8',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(23156)',
          style: Styles.textStyle14
              .copyWith(color: const Color(0xff707070)),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
