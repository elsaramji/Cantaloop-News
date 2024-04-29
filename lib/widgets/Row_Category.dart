import 'package:flutter/material.dart';
import 'package:newsapp/data/category_data.dart';
import 'package:newsapp/views/category.dart';

import 'package:newsapp/widgets/news_data_widget/Categorywidget.dart';

class Categorysection extends StatelessWidget {
  /// Constructs a [Categorysection] widget.
  ///
  /// The [Categorysection] widget is a single-child scrollable widget that displays a
  /// horizontal row of [Categorywidget] instances. Each [Categorywidget] represents
  /// a section of content, and when tapped, navigates to a [CategoryView] with
  /// the corresponding [id].
  const Categorysection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: SectionData.section.map((e) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryView(id: e.id)));
                },
                child: Categorywidget(model: e));
          }).toList(),
        ));
  }
}
