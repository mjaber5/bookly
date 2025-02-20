import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like ",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
