import 'package:bookly_app/Features/home/presentation/views/widgets/reting_item.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';

class BestSellerItemInfo extends StatelessWidget {
  const BestSellerItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text(
              'harry potter and the goblet of fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20,
            ),
          ),
          const Text(
            'H.K.fglkhfdf',
            style: Styles.textStyle14,
          ),
          const Row(
            children: [
              Text(
                '19.99',
                style: Styles.textStyle14,
              ),
              Spacer(),
              RatingItem()
            ],
          ),
        ],
      ),
    );
  }
}
