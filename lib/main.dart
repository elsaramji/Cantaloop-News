import 'package:flutter/material.dart';
import 'package:newsapp/service/news_APi_Function.dart';
import 'package:newsapp/views/home_view.dart';

/// The entry point of the application.
///
/// This function is called when the app is launched. It initializes the EgyNews
/// service to fetch the latest news, and then runs the main app widget.

void main(List<String> args) async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const NewsHome(),
    );
  }
}
