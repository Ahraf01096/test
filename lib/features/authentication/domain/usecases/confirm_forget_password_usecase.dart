import 'package:dartz/dartz.dart';

import 'package:task1/core/error/failure.dart';
import 'package:task1/core/shared/domain/entities/basic_entity.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import '../repository/base_authentication_repository.dart';

class ConfirmForgetPasswordUseCase
    extends BaseUseCase<BasicEntity, ConfirmForgetPasswordParams> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  ConfirmForgetPasswordUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure, BasicEntity>> call(
      ConfirmForgetPasswordParams parameters) async {
    return await baseAuthenticationRepository.confirmForgetPassword(
      code: parameters.code,
      email: parameters.email,
      password: parameters.password,
    );
  }
}
