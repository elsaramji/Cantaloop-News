import 'package:dio/dio.dart';
import 'package:newsapp/models/aritcal_model.dart';

/// Retrieves a list of news articles based on the specified category.
///
/// This method uses the NewsData.io API to fetch news articles from Egypt, with the
/// specified category and language set to Arabic.
///
/// Parameters:
/// - `category`: The category of news articles to retrieve, such as "business",
///   "entertainment", "health", "science", "sports", "technology", "world", or "top".
///
/// Returns:
/// A list of [Aritcalmodel] objects representing the retrieved news articles.

class EgyNews {
  static Future<List<Aritcalmodel>> newsengine(
      {required String category}) async {
    final Dio dio = Dio();
    final Response response = await dio.get(
        "https://newsdata.io/api/1/news?apikey=pub_41930b5091828e5255a493c6abe1b02234283&category=$category&country=eg&language=ar");

    final Map<String, dynamic> apiData = response.data;
    final List<dynamic> allAritcal = apiData["results"];
    final List<Aritcalmodel> arctiles = [];

    for (var e in allAritcal) {
      Aritcalmodel element = Aritcalmodel.fromjson(e);
      arctiles.add(element);
    }
    return arctiles;
  }
}

/**
 * business
 * entertainment
 * health
 * science
 * sports
 * technology
 * world,top
 * 
 */