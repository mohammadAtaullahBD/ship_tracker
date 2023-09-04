import 'package:ship_tracker/utils/importer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({this.index = 0, super.key});
  static String route = homeRoute;
  final int index;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index;
  }

  final List<Widget> _widgetOptions = [
    const UserInputScreen(),
    // WebScreen(),
    const MapScreen(),
    const DetailScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: blackPrimaryColor.withOpacity(0.65),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (int index) => setState(() {
          selectedIndex = index;
        }),
      ),
    );
  }
}
