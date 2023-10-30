import 'package:flutter/material.dart';
import 'package:movies_app/extension/height_and_width.dart';
import 'package:movies_app/model/movie_model.dart';

class CategoryOfDetailScreen extends StatelessWidget {
  const CategoryOfDetailScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.screenHeight * 0.009),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies[index].genra.length - 1,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
              child: Column(
                children: [
                  Container(
                    height: context.screenHeight * 0.052,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        movies[index].genra[index],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
