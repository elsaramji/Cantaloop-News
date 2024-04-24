/// Represents a category model with an image source, title, and unique identifier.
class CatgoryModle {
  /// The image source for the category.
  final String imagesrc;

  /// The title of the category.
  final String title;

  /// The unique identifier for the category.
  late final String id;

  /// Creates a new instance of the [CatgoryModle] class with the specified image source, title, and identifier.
  CatgoryModle({required this.imagesrc, required this.title, required this.id});
}
