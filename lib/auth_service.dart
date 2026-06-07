import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> registerWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null; // Pulangkan null maksudnya BERJAYA
    } on FirebaseAuthException catch (e) {
      return e.message; // Pulangkan mesej error dari Firebase
    } catch (e) {
      return "Ada masalah teknikal berlaku. Cuba lagi.";
    }
  }

  Future<String?> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null; // Pulangkan null maksudnya BERJAYA LOGIN
    } on FirebaseAuthException catch (e) {
      return e.message; // Pulangkan mesej error (contoh: salah password/user tak wujud)
    } catch (e) {
      return "Ada masalah teknikal berlaku. Cuba lagi.";
    }
  }
}