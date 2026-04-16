import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/friend_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<FriendEntity>>> getFriends();
}
