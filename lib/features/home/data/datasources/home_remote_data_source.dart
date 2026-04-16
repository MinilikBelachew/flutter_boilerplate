import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../models/friend_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<FriendModel>> getFriends();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio client;

  HomeRemoteDataSourceImpl({required this.client});

  @override
  Future<List<FriendModel>> getFriends() async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));
      
      // Return dummy data
      return [
        const FriendModel(
          id: '1',
          name: 'Trixie Perez',
          country: 'Canada',
          interests: ['Compassion', 'Mindful Listening', 'Publications'],
          avatarUrl: 'assets/images/person.png',
        ),
      ];
    } catch (e) {
      throw ServerException();
    }
  }
}
