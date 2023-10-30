import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/extension/height_and_width.dart';
import 'package:movies_app/model/movie_model.dart';

class MoviePictureAndRatting extends StatelessWidget {
  MoviePictureAndRatting({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: context.screenHeight * 0.36,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
          ),
          image: DecorationImage(
            image: AssetImage(
              movies[index].poster,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        right: 0,
        bottom: 1,
        child: Container(
          height: context.screenHeight * 0.1,
          width: context.screenHeight * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(0.4),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/star_fill.svg',
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    '${movies[index].rating}/10',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    movies[index].numOfRatings.toString(),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/star.svg',
                      height: 25,
                      width: 25,
                    ),
                    const Text(
                      'Rate This',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: context.screenHeight * 0.03,
                    width: context.screenWidth * 0.06,
                    decoration: const BoxDecoration(
                        color: Colors.green, shape: BoxShape.rectangle),
                    child: const Center(
                        child: Text(
                      '76',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const Text(
                    'Metacore',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    movies[index].metascoreRating.toString(),
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  )
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}
