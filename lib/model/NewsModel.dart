import 'package:news/model/SourceModel.dart';

class NewsModel {
  late String title;
  late String description;
  late String urlToImage;
  late String author;
  late String content;
  late String publishedAt;
  late SourceModel? source;

  NewsModel(
      {required this.title,
      required this.description,
      required this.urlToImage,
      required this.author,
      required this.content,
      required this.publishedAt,
      this.source});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      author: json['author'],
      content: json['content'],
      publishedAt: json['publishedAt'],
      source: SourceModel.fromJson(json['source']),
    );
  }
}
