class NewsModel {
  int? id;
  String? image;
  String? summary;
  String? author;
  String? title;
  String? source;
  String? publishedAt;
  String? category;
  List<dynamic>? tags;

  NewsModel({
    required this.title,
    required this.id,
    required this.image,
    required this.summary,
    required this.author,
    required this.source,
    required this.publishedAt,
    required this.category,
    required this.tags,
  });

  // Factory method to create a NewsModel instance from a JSON object
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'],
      image: json['image'],
      summary: json['summary'],
      author: json['author'],
      title: json['title'],
      source: json['source'],
      publishedAt: json['publishedAt'],
      category: json['category'],
      tags: json['tags'],
    );
  }

  // Method to convert a NewsModel instance to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'summary': summary,
      'author': author,
      'title': title,
      'source': source,
      'publishedAt': publishedAt,
      'category': category,
      'tags': tags,
    };
  }
}
