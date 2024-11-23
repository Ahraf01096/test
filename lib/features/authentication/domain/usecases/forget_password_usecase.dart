import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/core/shared/domain/entities/basic_entity.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import '../repository/base_authentication_repository.dart';

class ForgetPasswordUseCase
    extends BaseUseCase<BasicEntity, ForgetPasswordParams> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  ForgetPasswordUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure, BasicEntity>> call(
      ForgetPasswordParams parameters) async {
    return await baseAuthenticationRepository.forgetPassword(
      email: parameters.email,
    );
  }
}
