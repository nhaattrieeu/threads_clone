import 'package:threads_clone/data/thread/models/author_model.dart';
import 'package:threads_clone/domain/thread/entities/thread.dart';

class ThreadModel extends Thread {
  const ThreadModel({
    required super.id,
    required super.content,
    required super.media,
    required super.like,
    required super.comment,
    required super.repost,
    required super.share,
    required super.isFirst,
    required super.isLiked,
    required super.createdAt,
    required super.author,
  });

  factory ThreadModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> rawDataMedia = json["media"];
    List<String> media = rawDataMedia.map((e) => e.toString()).toList();
    return ThreadModel(
      id: json["id"],
      content: json["content"],
      media: media,
      like: json["like"],
      comment: json["comment"],
      repost: json["repost"],
      share: json["share"],
      isFirst: json["is_first"],
      isLiked: json["is_liked"],
      createdAt: json["created_at"],
      author: AuthorModel.fromJson(json["author"]),
    );
  }
}
