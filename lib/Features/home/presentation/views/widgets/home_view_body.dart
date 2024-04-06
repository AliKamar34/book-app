import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_list_view.dart';
import 'package:bookly_app/core/Utils/styels.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListView(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Best Seller ',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 15,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}




