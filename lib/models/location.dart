import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Palawan', 'assets/images/image1.jpeg', [
        LocationFact('Summary', 'Some text...'),
        LocationFact('How to Get There', 'Some text...'),
      ]),
      Location(2, 'Bergen', 'assets/images/image2.jpeg', [
        LocationFact('Summary', 'Some text...'),
        LocationFact('How to Get There', 'Some text...'),
      ]),
      Location(3, 'Sicily', 'assets/images/image3.jpeg', [
        LocationFact('Summary', 'Some text...'),
        LocationFact('How to Get There', 'Some text...'),
      ]),
    ];
  }

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
