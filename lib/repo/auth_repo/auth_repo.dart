import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  Future<User?> createUserWithEmailPassword(
      String email, String password) async {
    final _auth = FirebaseAuth.instance;
    try {
      final x = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = x.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print('password');
      } else if (e.code == "email-already-in-use") {
        print('email');
      }
      return null;
    }
  }
}
