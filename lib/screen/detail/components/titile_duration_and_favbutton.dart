import 'package:flutter/material.dart';
import 'package:movies_app/extension/height_and_width.dart';
import 'package:movies_app/model/movie_model.dart';

class TitileDurationAndFavButton extends StatelessWidget {
  const TitileDurationAndFavButton({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                movies[index].title.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: context.screenHeight * 0.01,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movies[index].year.toString(),
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.01,
                  ),
                  Text(
                    'PG-13',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.01,
                  ),
                  Text(
                    '2h:32min',
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  )
                ],
              )
            ],
          ),
          Container(
            height: context.screenHeight * 0.06,
            width: context.screenWidth * 0.13,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8)),
            child: const Center(
                child: Icon(
              Icons.add,
              color: Colors.white,
            )),
          )
        ],
      ),
    );
  }
}
