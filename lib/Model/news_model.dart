class NewsModel {
  final String? image;
  final String title;
  final String? description;
  final String publishedAt;
  final String content;
  final String url;

  NewsModel({
    required this.publishedAt,
    required this.content,
    required this.image,
    required this.title,
    required this.description,
    required this.url,
  });
}
