import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/friend_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<FriendEntity>>> getFriends() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteFriends = await remoteDataSource.getFriends();
        return Right(remoteFriends);
      } on ServerException {
        return const Left(ServerFailure('Server Error during GetFriends'));
      }
    } else {
      return const Left(NetworkFailure());
    }
  }
}
