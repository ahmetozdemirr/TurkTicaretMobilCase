import 'package:cloud_firestore/cloud_firestore.dart';

class CafeModel {
  String? cafename;
  String? image;
  String? ratings;
  String? longitude;
  String? latitude;
  CafeModel({
    this.cafename,
    this.image,
    this.longitude,
    this.latitude,
    this.ratings,
  });

  CafeModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    cafename = map['cafename'];
    image = map['image'];
    longitude = map['longitude'];
    latitude = map['latitude'];
    ratings = map['ratings'];
  }

  toJson() {
    return {
      'cafename': cafename,
      'image': image,
      'longitude': longitude,
      'latitude': latitude,
      'ratings': ratings,
    };
  }
}
