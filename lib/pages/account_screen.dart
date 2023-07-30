import 'package:ship_tracker/utils/importer.dart';

class AccountScreen extends StatelessWidget {
  static String route = accountRoute;
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitePrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getScreenHeight() * 0.2 + getScreenWidth() * 0.15,
            child: Stack(
              children: [
                Container(
                  color: primaryColor,
                  height: getScreenHeight() * 0.2,
                ),
                Positioned(
                  bottom: 0,
                  left: getScreenWidth() / 2 - getScreenWidth() * 0.15 - 3,
                  child: Container(
                    width: getScreenWidth() * 0.3 + 6,
                    height: getScreenWidth() * 0.3 + 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: secondaryColor,
                    ),
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/images/profile.png'),
                        backgroundColor: whitePrimaryColor,
                        radius: getScreenWidth() * 0.15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //         width: 80.0,
          //         height: 80.0,
          //         decoration: const BoxDecoration(
          //           shape: BoxShape.circle,
          //           color: primaryColor,
          //         ),
          //         child: const Center(
          //           child: CircleAvatar(
          //             radius: 35,
          //             backgroundImage: AssetImage(ImagesUtils.profileImages),
          //             backgroundColor: primaryColor,
          //           ),
          //         ),
          //       ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mohammad Ataullah',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          verticalSpace(height: 0.05),
          Container(
            color: whiteSecondaryColor,
            width: getScreenWidth() * 0.9,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(title: Text('Email: md.ataullah.bd@gmail.com')),
                ListTile(title: Text('Phone: +1 (555) 555-1234')),
                ListTile(title: Text('Address: Palisades Park, NJ 07650, USA')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
