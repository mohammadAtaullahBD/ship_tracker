import "package:ship_tracker/utils/importer.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<CordinateRepository>(
          create: (context) => CordinateRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CordinateBloc(
              RepositoryProvider.of<CordinateRepository>(context),
            ),
          ),
        ],
        child: MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Flutter Demo',
          theme: ThemeData().copyWith(
              colorScheme: const ColorScheme.light().copyWith(
                primary: primaryColor,
              ),
              dataTableTheme: const DataTableThemeData()),
          debugShowCheckedModeBanner: false,
          routes: allRouts,
          initialRoute: LauncherScreen.route,
        ),
      ),
    );
  }
}
