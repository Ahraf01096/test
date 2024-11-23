import 'package:dartz/dartz.dart';

import 'package:task1/core/error/failure.dart';
import 'package:task1/core/shared/domain/entities/basic_entity.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import '../repository/base_authentication_repository.dart';

class VerifyCodeUseCase extends BaseUseCase<BasicEntity, VerifyCodeParams> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  VerifyCodeUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure, BasicEntity>> call(VerifyCodeParams parameters) async {
    return await baseAuthenticationRepository.verifyCode(
      username: parameters.username,
      code: parameters.code,
    );
  }
}
