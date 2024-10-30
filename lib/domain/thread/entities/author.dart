import 'package:equatable/equatable.dart';

class Author extends Equatable {
  final String id;
  final String username;
  final bool isVerified;
  final String profilePictureUrl;

  const Author({
    required this.id,
    required this.username,
    required this.isVerified,
    required this.profilePictureUrl,
  });

  @override
  List<Object> get props => [id, username, isVerified, profilePictureUrl];
}
