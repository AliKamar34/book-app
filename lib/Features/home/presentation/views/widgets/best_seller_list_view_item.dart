import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item_info.dart';
import 'package:bookly_app/core/Utils/app_routes.dart';
import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 3,
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
        ),
      ),
    );
  }
}
