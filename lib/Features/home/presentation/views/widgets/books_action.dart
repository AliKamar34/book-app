import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/Utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Free',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            onPressed: () async {
              launchUrlFunction(context, bookModel.volumeInfo.previewLink!);
            },
          ),
          CustomButton(
            onPressed: () async {
              launchUrlFunction(context, bookModel.volumeInfo.previewLink!);
            },
            text: getText(bookModel),
            backGroundColor: const Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avilable';
    } else {
      return ' Preview';
    }
  }
}
