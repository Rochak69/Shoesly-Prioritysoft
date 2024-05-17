import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirestore {
  static AppFirestore instance = AppFirestore();
  static late FirebaseFirestore firestore;
  static void init() {
    firestore = FirebaseFirestore.instance;
  }

  static DocumentReference<Map<String, dynamic>> products(String id) {
    return firestore.collection('products').doc(id);
  }

  static DocumentReference<Map<String, dynamic>> reviewsDocument(
    String id,
  ) {
    return firestore.collection('reviews').doc(id);
  }

  static CollectionReference<Map<String, dynamic>> productsCollection() {
    return firestore.collection('products');
  }

  static CollectionReference<Map<String, dynamic>> reviewCollection() {
    return firestore.collection('review');
  }
}
