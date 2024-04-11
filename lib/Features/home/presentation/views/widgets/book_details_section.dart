import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_container.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/reting_item.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.22),
          child: CustomBookContainer(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                'https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=600',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle20,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle14.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const RatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        const BooksAction(),
      ],
    );
  }
}
