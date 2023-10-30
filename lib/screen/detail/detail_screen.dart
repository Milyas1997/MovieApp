import 'package:flutter/material.dart';
import 'package:movies_app/screen/home/component/body.dart';
import 'package:movies_app/screen/home/home_screen.dart';

import 'components/body.dart';

class MovieDetailScreen extends StatelessWidget {
  MovieDetailScreen({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f0f1),
      body: DetailBody(
        index: index,
      ),
    );
  }
}
