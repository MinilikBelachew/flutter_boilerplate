import 'package:equatable/equatable.dart';

class FriendEntity extends Equatable {
  final String id;
  final String name;
  final String country;
  final List<String> interests;
  final String avatarUrl;

  const FriendEntity({
    required this.id,
    required this.name,
    required this.country,
    required this.interests,
    required this.avatarUrl,
  });

  @override
  List<Object?> get props => [id, name, country, interests, avatarUrl];
}
