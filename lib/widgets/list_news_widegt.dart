import 'package:flutter/material.dart';
import 'package:newsapp/views/web_view_show.dart';
import 'package:newsapp/widgets/Aritcal%20Widget.dart';
import '../models/aritcal_model.dart';

/// Displays a list of news articles using the [Aritcalwidget].
///
/// This widget takes a list of [Aritcalmodel] objects and displays them in a [SliverList].
/// When an article is tapped, it navigates to the [NewsWebVeiw] screen to display the article's content.
///
/// [aritcals] - The list of news articles to display.
class Listnews extends StatelessWidget {
  final List<Aritcalmodel> aritcals;
  const Listnews({super.key, required this.aritcals});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Aritcalwidget(
          link: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NewsWebVeiw(
                url: aritcals[index].url,
              );
            }));
          },
          aritcalmodel: Aritcalmodel(
              title: aritcals[index].title,
              subtitle: aritcals[index].subtitle ?? " ",
              image: aritcals[index].image ??
                  "https://e7.pngegg.com/pngimages/829/733/png-clipart-logo-brand-product-trademark-font-not-found-logo-brand.png",
              url: aritcals[index].url),
        );
      },
      itemCount: aritcals.length,
    );
  }
}
