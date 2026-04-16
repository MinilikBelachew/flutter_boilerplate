import '../../domain/entities/friend_entity.dart';

class FriendModel extends FriendEntity {
  const FriendModel({
    required String id,
    required String name,
    required String country,
    required List<String> interests,
    required String avatarUrl,
  }) : super(
          id: id,
          name: name,
          country: country,
          interests: interests,
          avatarUrl: avatarUrl,
        );

  factory FriendModel.fromJson(Map<String, dynamic> json) {
    return FriendModel(
      id: json['id'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      interests: List<String>.from(json['interests'] as List),
      avatarUrl: json['avatar_url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'country': country,
      'interests': interests,
      'avatar_url': avatarUrl,
    };
  }
}
