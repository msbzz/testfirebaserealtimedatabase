import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  final DatabaseReference _db = FirebaseDatabase.instance.reference();

  void saveUserData(String userId, String name, String email) {
    _db.child('users').child(userId).set({
      'name': name,
      'email': email,
    });
  }
}
