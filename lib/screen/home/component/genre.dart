import 'package:flutter/material.dart';
import 'package:movies_app/extension/height_and_width.dart';

class Genre extends StatelessWidget {
  const Genre({
    super.key,
    required this.genres,
  });

  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),
      height: context.screenHeight * 0.05,
      child: ListView.builder(
          itemCount: genres.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin:
                  EdgeInsets.symmetric(horizontal: context.screenWidth * 0.03),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.03),
                child: Center(
                  child: Text(
                    genres[index],
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
