import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Deneme extends StatelessWidget {
  const Deneme({Key? key, required this.DocId}) : super(key: key);
  final String DocId;

  @override
  Widget build(BuildContext context) {
    CollectionReference product =
        FirebaseFirestore.instance.collection('Products');
    return FutureBuilder<DocumentSnapshot>(
        future: product.doc(DocId).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Something Went Wrong");
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exits");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<dynamic, dynamic> data =
                snapshot.data!.data() as Map<dynamic, dynamic>;
            return Text("Full Name: ${data['name']}  ${data['cafename']}");
          }
          return Text("Loading");
        });
  }
}
