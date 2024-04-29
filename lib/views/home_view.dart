import 'package:flutter/material.dart';
import 'package:newsapp/data/appbar_data.dart';
import 'package:newsapp/widgets/Appbarwidget.dart';
import 'package:newsapp/widgets/News_list_Bulider.dart';
import 'package:newsapp/widgets/Row_Category.dart';

class NewsHome extends StatelessWidget {
  const NewsHome({super.key});

  /// Builds the home view for the application.
  ///
  /// The home view consists of a [Scaffold] with a [SafeArea] and a [CustomScrollView]
  /// that contains a [Categorysection] and a [Newsbuliding].
  ///
  /// The [CustomScrollView] uses the [BouncingScrollPhysics] to provide a bouncing
  /// effect when scrolling.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Normalbar(
          model: Appbardata.modelbar,
        ),
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: Categorysection(),
              ),
              Newsbuliding(
                category: 'top',
              )
            ],
          ),
        ));
  }
}
