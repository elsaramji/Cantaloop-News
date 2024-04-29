import 'package:flutter/material.dart';
import 'package:newsapp/models/aritcal_model.dart';


/// Represents a widget that displays an article with an image, title, and subtitle.
///
/// The [Aritcalwidget] is a stateless widget that takes an [Aritcalmodel] and a [VoidCallback] as parameters.
/// The widget displays the article's image, title, and subtitle in a column layout.
/// When the widget is tapped, the provided [VoidCallback] is executed.
///
/// Example usage:
/// 
/// Aritcalwidget(
///   aritcalmodel: myAritcalmodel,
///   link: () => navigateToArticleDetails(myAritcalmodel),
/// )
/// 

class Aritcalwidget extends StatelessWidget {
  final Aritcalmodel aritcalmodel;
  final VoidCallback link;
  const Aritcalwidget(
      {super.key, required this.aritcalmodel, required this.link});

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: link,
      child: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(aritcalmodel.image!),
                      fit: BoxFit.fill)),
            ),
            Text(
              textAlign: TextAlign.right,
              maxLines: 2,
              aritcalmodel.title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
                textAlign: TextAlign.right,
                maxLines: 2,
                aritcalmodel.subtitle!,
                style: const TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
