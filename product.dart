class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? originalPrice;
  final List<String> images;
  final String category;
  final double rating;
  final int reviewCount;
  final bool freeShipping;
  final String affiliateLink;
  final int stock;
  final List<String> tags;
  final String brand;
  final int discount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.originalPrice,
    required this.images,
    required this.category,
    required this.rating,
    required this.reviewCount,
    this.freeShipping = false,
    required this.affiliateLink,
    required this.stock,
    required this.tags,
    required this.brand,
    this.discount = 0,
  });

  bool get hasDiscount => originalPrice != null && originalPrice! > price;
  
  int get discountPercentage {
    if (!hasDiscount) return 0;
    return (((originalPrice! - price) / originalPrice!) * 100).round();
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      originalPrice: json['originalPrice']?.toDouble(),
      images: List<String>.from(json['images']),
      category: json['category'],
      rating: json['rating'].toDouble(),
      reviewCount: json['reviewCount'],
      freeShipping: json['freeShipping'] ?? false,
      affiliateLink: json['affiliateLink'],
      stock: json['stock'],
      tags: List<String>.from(json['tags']),
      brand: json['brand'],
      discount: json['discount'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'originalPrice': originalPrice,
      'images': images,
      'category': category,
      'rating': rating,
      'reviewCount': reviewCount,
      'freeShipping': freeShipping,
      'affiliateLink': affiliateLink,
      'stock': stock,
      'tags': tags,
      'brand': brand,
      'discount': discount,
    };
  }
}
