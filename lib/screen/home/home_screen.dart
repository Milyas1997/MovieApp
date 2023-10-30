import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/constant.dart';
import 'package:movies_app/screen/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
    );
  }
}
