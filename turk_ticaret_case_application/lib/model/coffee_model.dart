import 'package:cloud_firestore/cloud_firestore.dart';

class CoffeeModel {
  String? cafename;
  String? image;
  String? name;
  String? price;
  String? ratings;
  String? olcu;
  CoffeeModel({
    this.cafename,
    this.image,
    this.name,
    this.price,
    this.ratings,
    this.olcu,
  });

  CoffeeModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    cafename = map['cafename'];
    image = map['image'];
    name = map['name'];
    price = map['price'];
    ratings = map['ratings'];
    olcu = map['olcu'];
  }

  toJson() {
    return {
      'cafename': cafename,
      'image': image,
      'name': name,
      'price': price,
      'ratings': ratings,
      'olcu': olcu,
    };
  }
}
