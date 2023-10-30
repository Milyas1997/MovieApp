import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/movie_model.dart';

class Rating extends StatelessWidget {
  Rating({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/star_fill.svg',
          width: 20,
          height: 20,
        ),
        Text(
          movies[index].rating.toString(),
        )
      ],
    );
  }
}
