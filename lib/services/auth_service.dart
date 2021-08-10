import 'package:firebase_auth/firebase_auth.dart';

class Authentication{
  final FirebaseAuth _auth;

  Authentication(this._auth);

  Stream<User> get authSteteChanges => _auth.idTokenChanges();

  Future<String> login (String email,String password) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Logged In";

    }catch(e){
      return e;
    }
  }
  Future<String> signup (String email,String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed Up";

    }catch(e){
      return e;
    }
  }
}

