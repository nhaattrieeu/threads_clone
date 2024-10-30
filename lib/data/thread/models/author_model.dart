import 'package:threads_clone/domain/thread/entities/author.dart';

class AuthorModel extends Author {
  const AuthorModel({
    required super.id,
    required super.username,
    required super.isVerified,
    required super.profilePictureUrl,
  });

  factory AuthorModel.fromJson(Map<String, dynamic> json) {
    return AuthorModel(
      id: json["id"],
      username: json["username"],
      isVerified: json["is_verified"],
      profilePictureUrl: json["profile_picture_url"],
    );
  }
}
