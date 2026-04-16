import 'package:equatable/equatable.dart';
import '../../domain/entities/friend_entity.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<FriendEntity> friends;

  const HomeLoaded(this.friends);

  @override
  List<Object?> get props => [friends];
}

class HomeFailure extends HomeState {
  final String message;

  const HomeFailure(this.message);

  @override
  List<Object?> get props => [message];
}
