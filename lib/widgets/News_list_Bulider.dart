import 'package:flutter/material.dart';
import 'package:newsapp/service/news_APi_Function.dart';
import 'package:newsapp/widgets/news_data_widget/list_news_widegt.dart';

/// Builds a news list widget using a FutureBuilder to fetch and display news articles.
///
/// The `Newsbuliding` widget is responsible for fetching the news articles from the `Aritcal.genraleAritcal` future,
/// and then rendering a `Listnews` with the fetched articles. If there is an error fetching the articles,
/// it displays an error message. If the articles are still being fetched, it displays a loading indicator.

// ignore: must_be_immutable
class Newsbuliding extends StatefulWidget {
  bool loading = true;
  final String category;
  Newsbuliding({super.key, required this.category});

  @override
  State<Newsbuliding> createState() => _NewsbulidingState();
}

class _NewsbulidingState extends State<Newsbuliding> {
  @override
  void initState() {
    EgyNews.newsengine(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: EgyNews.newsengine(category: widget.category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Listnews(aritcals: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      Text('Error loading news articles',
                          style: TextStyle(fontSize: 20, color: Colors.red)),
                    ],
                  ),
                ));
          } else {
            return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                    child: CircularProgressIndicator(
                  color: Colors.orange,
                )));
          }
        });
  }
}
