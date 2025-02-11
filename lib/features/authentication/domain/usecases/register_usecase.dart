import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/core/shared/domain/entities/basic_entity.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import '../repository/base_authentication_repository.dart';

class RegisterUseCase extends BaseUseCase<BasicEntity, RegisterParams> {
  final BaseAuthenticationRepository baseAuthenticationRepository;

  RegisterUseCase(this.baseAuthenticationRepository);

  @override
  Future<Either<Failure, BasicEntity>> call(RegisterParams parameters) async {
    return await baseAuthenticationRepository.register(
      username: parameters.username,
      password: parameters.password,
      email: parameters.email,
      firstName: parameters.firstName,
      lastName: parameters.lastName,
      affiliation: parameters.affiliation,
      nationality: parameters.nationality,
      country: parameters.country,
      city: parameters.city,
      dateOfBirth: parameters.dateOfBirth,
      phone: parameters.phone,
    );
  }
}
