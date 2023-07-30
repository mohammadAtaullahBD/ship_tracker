import 'package:ship_tracker/utils/importer.dart';

class CordinateRepository {
  // send current location
  sendCordinate(Cordinate cordinate) async {
    String url = 'https://www.test.minimaxhealthcare.org/api/user/id';
    Response res = await put(Uri.parse(url), body: {cordinate.toJson()});
    if (res.statusCode == 200) {
      return '200';
    } else {
      throw Exception(res.reasonPhrase);
    }
  }

  List<Cordinate> getCordinates() {
    return [
      const Cordinate(lat: 0, lon: 0),
      const Cordinate(lat: 0, lon: 0),
      const Cordinate(lat: 0, lon: 0),
      const Cordinate(lat: 0, lon: 0),
    ];
  }
}
