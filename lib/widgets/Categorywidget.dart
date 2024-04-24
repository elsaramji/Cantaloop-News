import 'package:flutter/material.dart';

import 'package:newsapp/models/category_model.dart';

/// Represents a widget that displays a section with an image and title.
///
/// The [Categorywidget] is a [StatelessWidget] that takes a [CatgoryModle] object
/// and displays it as a container with an image and a centered title text.
/// The container has a fixed width and height, and the image is set to fill the
/// container. The container has rounded corners and a margin.
///
/// Example usage:
///
/// Categorywidget(
///   model: CatgoryModle(
///     title: 'My Section',
///     imagesrc: 'assets/images/my_image.png',
///   ),
/// )
///

class Categorywidget extends StatelessWidget {
  final CatgoryModle model;
  const Categorywidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 200,
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: AssetImage(model.imagesrc), fit: BoxFit.fill),
      ),
      child: Center(
        child: Text(
          model.title,
          style: TextStyle(color: Colors.orange, fontSize: 18),
        ),
      ),
    );
  }
}
