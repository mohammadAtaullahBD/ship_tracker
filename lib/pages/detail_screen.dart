import 'package:ship_tracker/utils/importer.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static String route = detailRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image
            verticalSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getScreenWidth() * 0.45,
                  child: Image.asset(
                    'assets/images/ship2.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const Text('VS'),
                SizedBox(
                  width: getScreenWidth() * 0.45,
                  child: Image.asset(
                    'assets/images/ship1.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            verticalSpace(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/uk-flag.png',
                          width: 32,
                        ),
                        const Icon(
                          Icons.arrow_upward,
                        ),
                        Container(
                          width: 2,
                          height: 50,
                          color: blackSecondaryColor,
                        ),
                        Image.asset(
                          'assets/images/us-flag.png',
                          width: 32,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Sparks, Nevada, United State (USA)'),
                          const Text('ETA: Jul 14, 11:30 UTC (4 days later)'),
                          Container(height: 1, color: blackSecondaryColor),
                          const Row(
                            children: [
                              Column(
                                children: [
                                  Text('Speed:'),
                                  Text('5.2 kn'),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text('Course:'),
                                  Text('280.8'),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [Text('Draught:'), Text('-')],
                              )
                            ],
                          ),
                          Container(height: 1, color: blackSecondaryColor),
                          const Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Status:'),
                                    Text('-'),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Last report:'),
                                    Text('Jul 26, 2023 13:32 UTC')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(height: 1, color: blackSecondaryColor),
                          const Text('Sag Harbor, United States (USA)'),
                          const Text('ATD: Jul 14, 09:35 UTC (12 days ago)')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(),

            // -----------------

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildTableRow(['Ship Name', 'CARNIVAL', 'CELEBRITY']),
                  _buildTableRow(
                      ['Location', 'New York Bight', 'N Atlantic Ocean']),
                  _buildTableRow(['Distance', '832 Km', '']),
                  _buildTableRow(['Meeting Port', 'French Guiana', '']),
                  _buildTableRow(['Meeting Time', 'July 27, 2023, 2:22', '']),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildTableRow(List<String> cells) {
  final double screenWidth = getScreenWidth();
  return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
    Container(
      width: screenWidth * 2 / 8,
      decoration: BoxDecoration(border: Border.all()),
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 1,
      ),
      child: Text(
        cells[0],
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    Expanded(
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
        child: Text(
          cells[1],
        ),
      ),
    ),
    if (cells[2] != '')
      Expanded(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
          child: Text(
            cells[2],
          ),
        ),
      ),
  ]);
}
