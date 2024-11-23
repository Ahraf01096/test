import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/core/shared/domain/entities/basic_entity.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import '../repository/base_authentication_repository.dart';

class ResendVerifyCodeUseCase
    extends BaseUseCase<BasicEntity, ResendVerifyCodeParams> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  ResendVerifyCodeUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure, BasicEntity>> call(
      ResendVerifyCodeParams parameters) async {
    return await baseAuthenticationRepository.resendVerifyCode(
      username: parameters.username,
    );
  }
}
