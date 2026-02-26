class Banner {
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final String? link;
  final String? categoryId;

  Banner({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    this.link,
    this.categoryId,
  });

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      image: json['image'],
      link: json['link'],
      categoryId: json['categoryId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'image': image,
      'link': link,
      'categoryId': categoryId,
    };
  }
}
