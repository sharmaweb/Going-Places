import 'package:flutter/foundation.dart';

import '../models/place.dart';
import 'dart:io';
class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
  void addItems(String pickedTitle, File pickedImage){
    final newPlace=Place(id: DateTime.now().toString(),
    image: pickedImage,
    title: pickedTitle,
    location: null);
    _items.add(newPlace);
    notifyListeners();
  }
}