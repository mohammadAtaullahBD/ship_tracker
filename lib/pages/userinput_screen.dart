import 'package:ship_tracker/utils/importer.dart';

class UserInputScreen extends StatelessWidget {
  static String route = userInputRoute;
  const UserInputScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // spaceV(size.height * 0.02),
                verticalSpace(),
                const Text(
                  "Your information",
                  style: TextStyle(fontSize: 24),
                ),
                verticalSpace(),
                DropdownMenu(
                  width: getScreenWidth() - 16,
                  label: const Text('Ship name'),
                  hintText: "Select ship name",
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(label: 'Titanic', value: 'titanic'),
                    DropdownMenuEntry(label: 'Mayflower', value: 'titanic'),
                    DropdownMenuEntry(label: 'HMS Victory', value: 'titanic'),
                    DropdownMenuEntry(
                        label: 'USS Constitution', value: 'titanic'),
                    DropdownMenuEntry(label: 'Santa Maria', value: 'titanic'),
                  ],
                  menuStyle: const MenuStyle(
                    minimumSize: MaterialStatePropertyAll(Size.infinite),
                  ),
                ),
                verticalSpace(),
                const Text('Distination:'),
                TextField(
                  decoration: textFieldDecoration(
                    prefixIcon: const Icon(Icons.gif_box_sharp),
                    hint: 'Enter your distination Name',
                  ),
                  keyboardType: TextInputType.text,
                ),

                verticalSpace(),
                verticalSpace(),
                const Text(
                  "Companion information",
                  style: TextStyle(fontSize: 24),
                ),
                verticalSpace(),
                DropdownMenu(
                  width: getScreenWidth() - 16,
                  label: const Text('Ship name'),
                  hintText: "Select ship name",
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(label: 'Titanic', value: 'titanic'),
                    DropdownMenuEntry(label: 'Mayflower', value: 'titanic'),
                    DropdownMenuEntry(label: 'HMS Victory', value: 'titanic'),
                    DropdownMenuEntry(
                        label: 'USS Constitution', value: 'titanic'),
                    DropdownMenuEntry(label: 'Santa Maria', value: 'titanic'),
                  ],
                ),
                verticalSpace(),
                const Text('Distination:'),
                TextField(
                  decoration: textFieldDecoration(
                    prefixIcon: const Icon(Icons.gif_box_sharp),
                    hint: 'Enter your distination Name',
                  ),
                  keyboardType: TextInputType.text,
                ),

                verticalSpace(),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushAndRemoveUntil(HomeScreen.route,()=>false);
                    // Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.route, (route) => false)
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(
                            index: 1,
                          ),
                        ),
                        (route) => false);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.symmetric(vertical: 12.0),
                    child: Center(
                      child: Text(
                        "Go",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: whitePrimaryColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
