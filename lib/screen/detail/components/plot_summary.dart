import 'package:flutter/material.dart';
import 'package:movies_app/extension/height_and_width.dart';
import 'package:movies_app/model/movie_model.dart';

class PlotSummary extends StatelessWidget {
  const PlotSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.06,
          vertical: context.screenHeight * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Plot Summary',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Text(
            plotText,
            style: TextStyle(
              color: Colors.black.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
