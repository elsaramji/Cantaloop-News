/// Represents an article model with a title, optional image, optional subtitle, and a URL.
class Aritcalmodel {
  /// The title of the article.
  final String title;

  /// The optional image URL for the article.
  final String? image;

  /// The optional subtitle of the article.
  final String? subtitle;

  /// The URL of the article.
  final String url;

  /// Creates a new [Aritcalmodel] with the given properties.
  Aritcalmodel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.url,
  });

  factory Aritcalmodel.fromjson(json) {
    return Aritcalmodel(
        title: json["title"],
        subtitle: json["description"],
        image: json["image_url"],
        url: json["link"]);
  }
}
