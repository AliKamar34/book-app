import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookResultListView extends StatelessWidget {
  const BookResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BookListViewItem(
                bookModel: state.books[index],
              );
            },
          );
        } else if (state is SearchResultFailuer) {
          return CustomErrorWidget(
            errMessage: state.errMessage.contains('is not a subtype of type')
                ? 'No books'
                : state.errMessage,
          );
        } else if (state is SearchResultLoading) {
          return const CustomLoadingIndicator();
        } else {
          return const Center(
            child: Text(
              'search here! ',
              style: Styles.textStyle20,
            ),
          );
        }
      },
    );
  }
}
