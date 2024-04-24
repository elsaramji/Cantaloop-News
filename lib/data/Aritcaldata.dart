import 'package:newsapp/models/aritcal_model.dart';
import 'package:newsapp/service/getnewsaritcal.dart';

/// Generates a list of [Aritcalmodel] objects by calling the `getGeneral` method of the `EgyNews` class with the 'top' category.

class Aritcal {
  static Future<List<Aritcalmodel>> genraleAritcal =
      EgyNews.newsengine(category: 'top');
}
