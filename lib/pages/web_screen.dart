// import 'package:ship_tracker/utils/importer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatelessWidget {
  WebScreen({super.key});
  final _webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://www.marinetraffic.com'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(
        controller: _webViewController,
      ),
    );
  }
}
