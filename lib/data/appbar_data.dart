import 'package:flutter/material.dart';
import 'package:newsapp/models/appbar_model.dart';

/// Provides a pre-configured [AppBarModel] for the app's main app bar.
///
/// The [AppBarModel] includes a title with "New" in black and "News" in orange,
/// the app bar is centered, has a transparent background, and has no elevation.

class Appbardata {
  static AppBarmodel modelbar = AppBarmodel(
      showtitle: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "New",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "News",
            style: TextStyle(color: Colors.orange),
          )
        ],
      ),
      center: true,
      color: Colors.transparent,
      elev: 0);
}
