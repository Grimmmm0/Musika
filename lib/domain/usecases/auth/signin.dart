import 'package:dartz/dartz.dart';
import 'package:musika/core/usecase/usecase.dart';
import 'package:musika/data/models/auth/signin_user_req.dart';
import 'package:musika/domain/repository/auth/auth.dart';
import '../../../service_locator.dart';

class SigninUseCase implements UseCase<Either,SigninUserReq>{
  @override
  Future<Either> call({SigninUserReq ? params}) {

    return sl<AuthRepository>().signin(params!);
  }

}