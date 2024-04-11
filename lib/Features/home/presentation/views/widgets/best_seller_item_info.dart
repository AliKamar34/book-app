import 'package:bookly_app/Features/home/presentation/views/widgets/reting_item.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';

class BestSellerItemInfo extends StatelessWidget {
  const BestSellerItemInfo({
    super.key,
    required this.bookName,
    required this.authorName,
  });
  final String bookName;
  final String authorName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              bookName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16,
            ),
          ),
          Text(
            authorName,
            style: Styles.textStyle14,
          ),
          const Row(
            children: [
              Text(
                'Free',
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
