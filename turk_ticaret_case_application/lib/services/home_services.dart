import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turk_ticaret_case_application/model/coffee_model.dart';

class HomeService {
 
  final CollectionReference _coffeeCollectionRef =
      FirebaseFirestore.instance.collection('Products');
   final CollectionReference _cafeCollectionRef =
      FirebaseFirestore.instance.collection('Cafe');

  Future<List<QueryDocumentSnapshot>> getCoffee() async {
    var value = await _coffeeCollectionRef.get();
    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getPopularCoffee() async {
    var value = await _coffeeCollectionRef.get();
    return value.docs;
  }
   Future<List<QueryDocumentSnapshot>> getCafe() async {
    var value = await _cafeCollectionRef.get();
    return value.docs;
  }
}
