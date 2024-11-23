import 'package:dartz/dartz.dart';
import 'package:task1/core/error/failure.dart';
import 'package:task1/features/stories/domain/entities/stories_entity.dart';

abstract class BaseStoriesRepository {
  Future<Either<Failure, StoriesEntity>> getStories({
    required String token,
  });
}
