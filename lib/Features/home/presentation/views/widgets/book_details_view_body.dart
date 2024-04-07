import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_container.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/reting_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.22),
            child: const CustomBookContainer(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            'H.K.dkjgdf',
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
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'You Can Also Like',
              style: Styles.textStyle16,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}


