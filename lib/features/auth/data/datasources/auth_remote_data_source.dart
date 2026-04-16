import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> signUp(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<UserModel> login(String email, String password) async {
    // This is a boilerplate implementation. Real API calls would go here.
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));
      
      // Return a dummy user for now
      return const UserModel(id: '1', email: 'test@example.com', name: 'Test User');
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<UserModel> signUp(String email, String password) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return UserModel(id: '2', email: email, name: 'New User');
    } catch (e) {
      throw ServerException();
    }
  }
}
