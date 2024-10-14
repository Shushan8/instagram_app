import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;

  bool checkIfUserSignedIn() {
    final user = _auth.currentUser;
    final authenticated = user != null;
    return authenticated;
  }

  void signOut() {
    _auth.signOut();
  }

  Future<User?> createUserWithEmailPassword(
      String email, String password) async {
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
