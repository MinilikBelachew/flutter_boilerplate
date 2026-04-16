import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/friend_entity.dart';
import '../repositories/home_repository.dart';

class GetFriendsUseCase implements UseCase<List<FriendEntity>, NoParams> {
  final HomeRepository repository;

  GetFriendsUseCase(this.repository);

  @override
  Future<Either<Failure, List<FriendEntity>>> call(NoParams params) async {
    return await repository.getFriends();
  }
}
