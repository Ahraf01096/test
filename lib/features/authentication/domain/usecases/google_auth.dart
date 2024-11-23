import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import 'package:task1/features/authentication/domain/entities/google_auth_entity.dart';

import '../repository/base_authentication_repository.dart';

class GoogleAuthUseCase
    extends BaseUseCase<GoogleAuthEntity, GoogleAuthParams> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  GoogleAuthUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure, GoogleAuthEntity>> call(
      GoogleAuthParams parameters) async {
    return await baseAuthenticationRepository.googleAuth();
  }
}
