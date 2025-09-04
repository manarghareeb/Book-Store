import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:book_store/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 14),
          Text('Search Result', style: Styles.testStyle18),
          SizedBox(height: 10),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
