import 'package:equatable/equatable.dart';

import 'author.dart';

class Thread extends Equatable {
  final String id;
  final String content;
  final List<String> media;
  final int like;
  final int comment;
  final int repost;
  final int share;
  final bool isFirst;
  final bool isLiked;
  final String createdAt;
  final Author author;

  const Thread({
    required this.id,
    required this.content,
    required this.media,
    required this.like,
    required this.comment,
    required this.repost,
    required this.share,
    required this.isFirst,
    required this.isLiked,
    required this.createdAt,
    required this.author,
  });

  Thread copyWith({
    String? id,
    String? content,
    List<String>? media,
    int? like,
    int? comment,
    int? repost,
    int? share,
    bool? isFirst,
    bool? isLiked,
    String? createdAt,
    Author? author,
  }) {
    return Thread(
      id: id ?? this.id,
      content: content ?? this.content,
      media: media ?? this.media,
      like: like ?? this.like,
      comment: comment ?? this.comment,
      repost: repost ?? this.repost,
      share: share ?? this.share,
      isFirst: isFirst ?? this.isFirst,
      isLiked: isLiked ?? this.isLiked,
      createdAt: createdAt ?? this.createdAt,
      author: author ?? this.author,
    );
  }

  @override
  List<Object> get props => [
        id,
        content,
        media,
        like,
        comment,
        repost,
        share,
        isFirst,
        isLiked,
        createdAt,
        author,
      ];
}
