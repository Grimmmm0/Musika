import 'package:dartz/dartz.dart';
import 'package:musika/core/usecase/usecase.dart';
import 'package:musika/data/models/auth/create_user_req.dart';
import 'package:musika/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq>{
  @override
  Future<Either> call({CreateUserReq ? params}) {

    return sl<AuthRepository>().signup(params!);
  }

}