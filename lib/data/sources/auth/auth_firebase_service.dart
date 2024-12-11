import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:musika/data/models/auth/create_user_req.dart';
import 'package:musika/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseService {

  Future<Either> signup(CreateUserReq createUserReq);

  Future<Either> signin(SigninUserReq signinUserReq);
}

class AuthFirebaseImpl extends AuthFirebaseService {

  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {

    try {

        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinUserReq.email, 
          password: signinUserReq.password
          );

          return const Right('Signin Successful');
        
      } on FirebaseAuthException catch (e) {
         String message = '';

         if(e.code == 'invalid-email'){
          message = 'Email dosen`t exist';
         } else if (e.code == 'invalid-credential') {
            message = 'Wrong Password';
         }

         return Left(message);
      }
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
      try {

        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, 
          password: createUserReq.password
          );

          return const Right('Sign Up Successful');
        
      } on FirebaseAuthException catch (e) {
         String message = '';

         if(e.code == 'weak-password'){
          message = 'The password provided is weak';
         } else if (e.code == 'email-already-in-use') {
            message = 'An account already exists with the email provided';
         }

         return Left(message);
      }
  }

}