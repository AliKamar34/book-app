import 'package:bookly_app/Features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        BlocProvider.of<SearchResultCubit>(context)
            .fetchSearchResult(category: value);
      },
      decoration: InputDecoration(
        hintText: 'Serach',
        suffixIcon: IconButton(
          onPressed: () {},
          // BlocProvider.of<SearchResultCubit>(context)
          //     .fetchSearchResult(category: category),
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
        ),
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
