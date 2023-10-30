import 'package:flutter/material.dart';
import 'package:movies_app/extension/height_and_width.dart';

import '../../../model/movie_model.dart';

class CastCrewDetail extends StatelessWidget {
  const CastCrewDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: context.screenHeight * 0.18,
            child: ListView.builder(
              itemCount: movies.length - 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(movies[index].castt[index]['image']),
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.23,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            movies[index].castt[index]['orginalName'],
                            style: const TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                          Text(movies[index].castt[index]['movieName'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 10)),
                        ],
                      ),
                    )
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
