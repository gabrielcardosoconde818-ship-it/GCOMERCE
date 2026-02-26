class Category {
  final String id;
  final String name;
  final String icon;
  final String image;
  final int productCount;

  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.image,
    required this.productCount,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      image: json['image'],
      productCount: json['productCount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'image': image,
      'productCount': productCount,
    };
  }
}
