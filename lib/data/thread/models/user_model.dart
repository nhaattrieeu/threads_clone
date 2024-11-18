import 'package:threads_clone/domain/thread/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.username,
    required super.fullName,
    required super.follower,
    required super.isVerified,
    required super.isPrivateProfile,
    required super.profilePictureUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      username: json["username"],
      fullName: json["full_name"],
      follower: json["follower"],
      isVerified: json["is_verified"],
      isPrivateProfile: json["is_private_profile"],
      profilePictureUrl: json["profile_picture_url"],
    );
  }
}
