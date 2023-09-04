import 'package:ship_tracker/utils/importer.dart';

class WebScreen extends StatelessWidget {
  static String route = userInputRoute;
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
