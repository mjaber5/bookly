import 'package:bookly/featuers/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/featuers/home/presentation/views/widgets/similer_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          BookDetailsSection(),
          Expanded(child: SizedBox(height: 50,)),
          SimilerBooksSection(),
          SizedBox(height: 40),
      
            ],
              ),
             ) ,)
      ],
    );
    
  }
}