import 'package:flutter/material.dart';
import 'package:newsapp/models/appbar_model.dart';

/// Represents a custom AppBar widget that can be configured with a [model] object.
///
/// The [Normalbar] extends the [AppBar] widget and allows customizing the
/// [backgroundColor], [elevation], [centerTitle], and [title] properties based
/// on the provided [model] object.
///
/// Example usage:
///
/// Normalbar(
///   model: AppBarModel(
///     color: Colors.blue,
///     elev: 4.0,
///     center: true,
///     showtitle: Text('News'),
///   ),
/// )
///

class Normalbar extends AppBar {
  final AppBarmodel model;
  Normalbar({super.key, required this.model});
  @override
  Color? get backgroundColor => model.color;
  @override
  double? get elevation => model.elev;
  @override
  bool? get centerTitle => model.center;
  @override
  Widget? get title => model.showtitle;
}
