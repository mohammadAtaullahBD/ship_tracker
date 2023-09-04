import 'package:ship_tracker/utils/importer.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});
  static String route = mapRoute;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late CustomInfoWindowController _customInfoWindowController;
  LatLng currentLocation = const LatLng(21.79417495181677, 90.20779161573543);
  LatLng ship1 = const LatLng(37.60750627526071, -71.49339276013626);
  LatLng ship2 = const LatLng(38.576571, -58.030305);

  final Map<String, Marker> _markers = {};

  @override
  void initState() {
    _customInfoWindowController = CustomInfoWindowController();
    super.initState();
  }

  void addMarker({
    required String id,
    required LatLng location,
    required String infoImageUrl,
    required String infoTitle,
    required String infoRate,
    required String infoDescription,
  }) async {
    BitmapDescriptor customIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        size: Size(50, 50),
      ),
      'assets/icons/marker.png',
    );
    Marker marker = Marker(
      icon: customIcon,
      markerId: MarkerId(id),
      position: location,
      onTap: () {
        _customInfoWindowController.addInfoWindow!(
            MarkerInfoWidget(
              imageUrl: infoImageUrl,
              title: infoTitle,
              rate: infoRate,
              description: infoDescription,
            ),
            location);
        setState(() {});
      },
    ); // Marker

    _markers[id] = marker;
    setState(() {});
  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: ship1,
              zoom: 4,
            ),
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            onMapCreated: (controller) {
              _customInfoWindowController.googleMapController = controller;
              // marker should add when the map created!
              addMarker(
                id: 'testID1',
                location: ship1,
                infoImageUrl:
                    'https://media.istockphoto.com/id/503132519/photo/titanic-and-iceberg.jpg?s=612x612&w=0&k=20&c=cO71OMKsceiSj07heG1jhOiNRNGevD-XrACWis2RdQ4=',
                infoTitle: 'Titanic 3',
                infoRate: '4.9*',
                infoDescription:
                    'The Titanic was a British luxury passenger liner that famously sank on its maiden voyage in April 1912 after hitting an iceberg, resulting in the loss of over 1,500 lives.',
              );
              addMarker(
                id: 'testID3',
                location: ship2,
                infoImageUrl:
                    'https://media.istockphoto.com/id/503132519/photo/titanic-and-iceberg.jpg?s=612x612&w=0&k=20&c=cO71OMKsceiSj07heG1jhOiNRNGevD-XrACWis2RdQ4=',
                infoTitle: 'Titanic 3',
                infoRate: '4.9*',
                infoDescription:
                    'The Titanic was a British luxury passenger liner that famously sank on its maiden voyage in April 1912 after hitting an iceberg, resulting in the loss of over 1,500 lives.',
              );
            },
            markers: _markers.values.toSet(),
            myLocationButtonEnabled: false,
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 222,
            width: 300,
            offset: 70,
          ),
        ],
      ),
    );
  }
}
