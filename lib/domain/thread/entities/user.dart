import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String username;
  final String fullName;
  final int follower;
  final bool isVerified;
  final bool isPrivateProfile;
  final String profilePictureUrl;

  const User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.follower,
    required this.isVerified,
    required this.isPrivateProfile,
    required this.profilePictureUrl,
  });

  User copyWith({
    String? id,
    String? username,
    String? fullName,
    int? follower,
    bool? isVerified,
    bool? isPrivateProfile,
    String? profilePictureUrl,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      fullName: fullName ?? this.fullName,
      follower: follower ?? this.follower,
      isVerified: isVerified ?? this.isVerified,
      isPrivateProfile: isPrivateProfile ?? this.isPrivateProfile,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
    );
  }

  static const empty = User(
    id: "",
    username: "",
    fullName: "",
    follower: -1,
    isVerified: false,
    isPrivateProfile: false,
    profilePictureUrl: "",
  );

  @override
  List<Object> get props => [
        id,
        username,
        fullName,
        follower,
        isVerified,
        isPrivateProfile,
        profilePictureUrl,
      ];
}
