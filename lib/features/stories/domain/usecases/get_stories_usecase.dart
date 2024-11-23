import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/core/usecase/base_usecase.dart';
import 'package:task1/features/stories/domain/entities/stories_entity.dart';
import 'package:task1/features/stories/domain/repository/base_stories_repository.dart';

class GetStoriesUsecase extends BaseUseCase<StoriesEntity, GetStoriesParams> {
  final BaseStoriesRepository baseStoriesRepository;

  GetStoriesUsecase(this.baseStoriesRepository);

  @override
  Future<Either<Failure, StoriesEntity>> call(
      GetStoriesParams parameters) async {
    return await baseStoriesRepository.getStories(
      token: parameters.token,
    );
  }
}
