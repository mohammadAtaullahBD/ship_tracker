import 'package:ship_tracker/utils/importer.dart';

class MarkerInfoWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rate;
  final String description;
  const MarkerInfoWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rate,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                ),
                const Spacer(),
                Text(
                  rate,
                  // widget.data!.date!,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(
                        index: 2,
                      ),
                    ),
                    (route) => false);
              },
              child: const Text('see more'))
        ],
      ),
    );
  }
}
