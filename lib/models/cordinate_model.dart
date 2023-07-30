import 'package:ship_tracker/utils/importer.dart';

class Cordinate extends Equatable{
  final double lat;
  final double lon;
  const Cordinate({
    required this.lat,
    required this.lon,
  });
  String toJson() {
    return jsonEncode({'lat': lat, 'lon': lon});
  }
  
  @override
  List<Object?> get props => [lat, lon];
}
