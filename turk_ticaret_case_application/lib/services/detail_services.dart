import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:turk_ticaret_case_application/model/coffee_model.dart';

class DetailService {
 
  final CollectionReference _detailCollectionRef =
      FirebaseFirestore.instance.collection('Products');


  Future<List<QueryDocumentSnapshot>> getDetail() async {
    var value = await _detailCollectionRef.get();
    return value.docs;
  }

  
  
}
