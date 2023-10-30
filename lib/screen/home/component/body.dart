import 'package:flutter/material.dart';

import 'categories.dart';
import 'genre.dart';
import 'poster_page_view.dart';

class Body extends StatelessWidget {
  Body({super.key});

  List<String> categories = [
    'In Theater',
    'Box Office',
    'In Theater',
    'Box Office',
    'In Theater',
    'Box Office',
  ];

  List<String> genres = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Category(categories: categories),
        Genre(genres: genres),
        const SizedBox(
          height: 20,
        ),
        const PageViewPoster(),
      ],
    );
  }
}
