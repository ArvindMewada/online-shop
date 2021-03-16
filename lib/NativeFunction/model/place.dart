import 'dart:io';

import 'package:flutter/foundation.dart';

class Place {
  final String id, title;
  final PlaceLocation location;
  final File image;

  Place(
      {@required this.id,
      @required this.title,
      @required this.location,
      @required this.image});
}

class PlaceLocation {
  final double latitute, longitute;
  final String address;

  PlaceLocation(
      {@required this.latitute, @required this.longitute, this.address});
}
