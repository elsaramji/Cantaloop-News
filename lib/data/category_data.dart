import 'package:newsapp/models/category_model.dart';

/// Defines the data for the sections of the application.
///
/// This class contains a static list of [CatgoryModle] objects that represent the
/// different sections of the application, such as entertainment, health, sports,
/// and technology. Each [CatgoryModle] has an image source, title, and unique
/// identifier.
///
/// The sections defined here are used throughout the application to display
/// content and navigate to different parts of the app.

class SectionData {
  static List<CatgoryModle> section = [
    CatgoryModle(
        imagesrc: "assets/entertaiment.jpeg",
        title: "ترفيه",
        id: "entertainment"),
    CatgoryModle(
        imagesrc: "assets/general conv.jpeg", title: "عام", id: "world,top"),
    CatgoryModle(
        imagesrc: "assets/health conv.jpeg", title: "صحه", id: "health"),
    CatgoryModle(imagesrc: "assets/science.jpg", title: "علمى", id: "science"),
    CatgoryModle(
        imagesrc: "assets/sports conv.jpeg", title: "رياضة", id: "sports"),
    CatgoryModle(
        imagesrc: "assets/technology.jpeg",
        title: "تكنولوجيا",
        id: "technology"),
  ];
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
