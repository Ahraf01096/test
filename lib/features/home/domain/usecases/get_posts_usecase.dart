import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import 'package:task1/features/home/domain/entities/posts_entity.dart';
import 'package:task1/features/home/domain/repository/base_home_repository.dart';

class GetPostsUseCase extends BaseUseCase<PostsEntity, GetPostsParams> {
  final BaseHomeRepository baseHomeRepository;

  GetPostsUseCase(this.baseHomeRepository);

  @override
  Future<Either<Failure, PostsEntity>> call(GetPostsParams parameters) async {
    return await baseHomeRepository.getPosts(
      token: parameters.token,
    );
  }
}
