import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/extension/height_and_width.dart';
import 'package:movies_app/model/movie_model.dart';
import 'package:movies_app/screen/detail/detail_screen.dart';
import 'package:movies_app/screen/home/home_screen.dart';

import 'rating.dart';

class PageViewPoster extends StatefulWidget {
  const PageViewPoster({
    super.key,
  });

  @override
  State<PageViewPoster> createState() => _PageViewPosterState();
}

class _PageViewPosterState extends State<PageViewPoster> {
  late PageController pageController;
  int initalPage = 1;
  @override
  void initState() {
    super.initState();
    pageController =
        PageController(viewportFraction: 0.9, initialPage: initalPage);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          onPageChanged: (page) {
            //it will tackle all
          },
          controller: pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MovieDetailScreen(index: index)),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: context.screenWidth * 0.1,
                          vertical: context.screenHeight * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(movies[index].poster),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    movies[index].title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  Rating(
                    index: index,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
