import 'package:ship_tracker/utils/importer.dart';

class LauncherScreen extends StatefulWidget {
  static const String route = launcherRoute;

  const LauncherScreen({super.key});

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(HomeScreen.route, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
