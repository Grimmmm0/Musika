import 'package:firebase_auth/firebase_auth.dart';
import 'package:musika/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {

  Future<void> signup(CreateUserReq createUserReq);

  Future<void> signin();
}

class AuthFirebaseImpl extends AuthFirebaseService {

  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq createUserReq) async {
      try {

        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, 
          password: createUserReq.password
          );
        
      } on FirebaseAuthException catch (e) {
        
      }
  }

}