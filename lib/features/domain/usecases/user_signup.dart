// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc_app/core/error/failures.dart';
import 'package:bloc_app/core/usecase/usecase.dart';
import 'package:bloc_app/features/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignup implements Usecase<String, UserSignupParams> {
  final AuthRepository authRepository;
  const UserSignup(this.authRepository);
  @override
  Future<Either<Failure, String>> call(UserSignupParams params) async {
    // TODO: implement call
    return await authRepository.signUpWithEmailPassword(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class UserSignupParams {
  final String email;
  final String password;
  final String name;
  UserSignupParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
