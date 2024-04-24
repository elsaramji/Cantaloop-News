import 'package:flutter/material.dart';
import 'package:newsapp/data/appbar_data.dart';
import 'package:newsapp/widgets/Appbarwidget.dart';

import 'package:webview_flutter/webview_flutter.dart';

/// Displays a web view with the provided URL.
///
/// This widget creates a [Scaffold] with a [SafeArea] that contains a [WebViewWidget]
/// with a [WebViewController] configured to load the specified URL and disable JavaScript.
///
/// The [url] parameter is required and represents the URL to be loaded in the web view.

class NewsWebVeiw extends StatelessWidget {
  final String url;

  NewsWebVeiw({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: Normalbar(
        model: Appbardata.modelbar,
      ),
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}
