import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(bookModel: bookModel,),
                const Expanded(child: SizedBox(height: 35)),
                const SimilarBooksSection(),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
