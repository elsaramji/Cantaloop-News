import 'package:flutter/material.dart';
import 'package:newsapp/data/Aritcaldata.dart';
import 'package:newsapp/data/appbar_data.dart';
import 'package:newsapp/service/getnewsaritcal.dart';
import 'package:newsapp/widgets/Appbarwidget.dart';
import 'package:newsapp/widgets/News_list_Bulider.dart';

/// Represents a view for displaying a category of news articles.
///
/// The [CategoryView] is a [StatefulWidget] that displays a list of news articles
/// for a specific category. It takes a required [id] parameter that identifies
/// the category to display.
///
/// When the widget is first created, it initializes the [Aritcal.genraleAritcal]
/// property with the news articles for the specified category by calling
/// [EgyNews.getGeneral].
///
/// The widget builds a [Scaffold] with a [SafeArea] and a [CustomScrollView]
/// that contains a single [Newsbuliding] widget to display the news articles.

class CategoryView extends StatefulWidget {
  final String id;
  const CategoryView({super.key, required this.id});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

@override
class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    Aritcal.genraleAritcal = EgyNews.newsengine(category: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Normalbar(model: Appbardata.modelbar),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [Newsbuliding()],
          ),
        ));
  }
}
