import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;

  bool checkIfUserSignedIn() {
    final user = _auth.currentUser;
    final authenticated = user != null;
    return authenticated;
  }

  Future<void> signOut() async {
    await _auth.signOut();
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

  Future<User?> signInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return null;
      final googleAuth = await googleUser.authentication;
      final creds = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      print('creds :: ${creds.accessToken}');
      final userCreds = await _auth.signInWithCredential(creds);
      return userCreds.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> login() async {}
}
