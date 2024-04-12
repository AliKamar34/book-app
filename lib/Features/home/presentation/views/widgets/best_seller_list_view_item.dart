import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item_info.dart';
import 'package:bookly_app/core/Utils/app_routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 2.7 / 3,
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              BestSellerItemInfo(
                bookName: bookModel.volumeInfo.title,
                authorName: bookModel.volumeInfo.authors?[0] ?? '',
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
