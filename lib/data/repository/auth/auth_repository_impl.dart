import 'package:dartz/dartz.dart';
import 'package:musika/data/models/auth/create_user_req.dart';
import 'package:musika/data/sources/auth/auth_firebase_service.dart';
import 'package:musika/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{

  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async { 
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }

}