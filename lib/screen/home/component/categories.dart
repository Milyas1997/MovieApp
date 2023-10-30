import 'package:flutter/material.dart';
import 'package:movies_app/extension/height_and_width.dart';

class Category extends StatefulWidget {
  Category({
    super.key,
    required this.categories,
  });

  final List<String> categories;
  int selected = 0;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.09,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  widget.selected = index;
                });
              },
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.025),
                    child: Text(
                      widget.categories[index],
                      style: TextStyle(
                          fontSize: 20,
                          color: widget.selected == index
                              ? Colors.black
                              : Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    height: context.screenHeight * 0.01,
                    width: context.screenWidth * 0.07,
                    color: index == widget.selected
                        ? Colors.blue.withOpacity(0.7)
                        : Colors.transparent,
                  )
                ],
              ),
            );
          }),
    );
  }
}
