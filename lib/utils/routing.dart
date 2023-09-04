import "package:ship_tracker/utils/importer.dart";

const launcherRoute = '/launch';
const homeRoute = '/home';
const userInputRoute = '/user-input';
const detailRoute = '/detail';
const mapRoute = '/live-map';
const accountRoute = '/account';
const webviewRoute = '/webview';

Map<String, WidgetBuilder> allRouts = {
  launcherRoute: (context) => const LauncherScreen(),
  homeRoute: (context) => const HomeScreen(),
  userInputRoute: (context) => const UserInputScreen(),
  detailRoute: (context) => const DetailScreen(),
  mapRoute: (context) => const MapScreen(),
  accountRoute: (context) => const AccountScreen(),
  webviewRoute: (context) => WebScreen(),
};
