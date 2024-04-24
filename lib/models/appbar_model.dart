import 'package:flutter/material.dart';
/// Represents the data required to configure an app bar.
///
/// The [AppBarmodel] class holds the necessary properties to configure an app bar,
/// including the background color, whether the title should be centered, the
/// elevation of the app bar, and the title widget itself.
class AppBarmodel {
  /// The background color of the app bar.
  final Color color;

  /// Whether the title should be centered in the app bar.
  final bool center;

  /// The elevation of the app bar.
  final double elev;

  /// The widget to display as the title of the app bar.
  final Widget showtitle;

  /// Creates a new instance of [AppBarmodel] with the specified properties.
  AppBarmodel({
    required this.showtitle,
    required this.center,
    required this.color,
    required this.elev,
  });
}

