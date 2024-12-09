import 'package:get_it/get_it.dart';
import 'package:musika/data/repository/auth/auth_repository_impl.dart';
import 'package:musika/data/sources/auth/auth_firebase_service.dart';
import 'package:musika/domain/repository/auth/auth.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

sl.registerSingleton<AuthFirebaseService>(
  AuthFirebaseImpl()
);

sl.registerSingleton<AuthRepository>(
  AuthRepositoryImpl()
);

}