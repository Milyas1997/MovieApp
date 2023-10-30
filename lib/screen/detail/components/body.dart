import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/extension/height_and_width.dart';
import 'package:movies_app/model/movie_model.dart';

import 'cast_crew_header.dart';
import 'cast_crew_image_list_detail.dart';
import 'category_of_detail_screen.dart';
import 'move_picture_and_rating.dart';
import 'plot_summary.dart';
import 'titile_duration_and_favbutton.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.screenHeight * 0.4,
            child: MoviePictureAndRatting(
              index: index,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TitileDurationAndFavButton(
            index: index,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.screenWidth * 0.06,
                vertical: context.screenHeight * 0.03),
            child: SizedBox(
              height: context.screenHeight * 0.08,
              child: CategoryOfDetailScreen(index: index),
            ),
          ),
          const PlotSummary(),
          const CastAndCrew(),
          const CastCrewDetail(),
          //Text(movies.cast.orginalName.toString())
        ],
      ),
    );
  }
}
