import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item_info.dart';
import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.9 / 4,
            child: Container(
              margin: const EdgeInsets.only(right: 5, left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const BestSellerItemInfo()
        ],
      ),
    );
  }
}