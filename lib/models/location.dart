import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Palawan', 'assets/images/image1.jpeg', [
        LocationFact('Summary', 'Some text...'),
        LocationFact('How to Get There', 'Some text...'),
      ]),
    ];
  }
}
