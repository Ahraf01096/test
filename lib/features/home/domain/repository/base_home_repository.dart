import 'package:dartz/dartz.dart';
import 'package:task1/features/home/domain/entities/posts_entity.dart';

import '../../../../core/error/failure.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, PostsEntity>> getPosts({
    required String token,
  });
}
