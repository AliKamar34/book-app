import 'package:bookly_app/Features/search/presentation/views/widgets/book_result_list_view.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_feild.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFeild(),
          SizedBox(
            height: 18,
          ),
          Text(
            'Results ',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(child: BookResultListView()),
        ],
      ),
    );
  }
}

