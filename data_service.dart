import '../models/product.dart';
import '../models/category.dart';
import '../models/banner.dart' as app_banner;
import '../models/review.dart';

class DataService {
  // Mock Categories
  static List<Category> getCategories() {
    return [
      Category(
        id: '1',
        name: 'Eletrônicos',
        icon: '📱',
        image: 'https://images.unsplash.com/photo-1498049794561-7780e7231661?w=800',
        productCount: 1250,
      ),
      Category(
        id: '2',
        name: 'Moda',
        icon: '👗',
        image: 'https://images.unsplash.com/photo-1445205170230-053b83016050?w=800',
        productCount: 2340,
      ),
      Category(
        id: '3',
        name: 'Casa',
        icon: '🏠',
        image: 'https://images.unsplash.com/photo-1484101403633-562f891dc89a?w=800',
        productCount: 890,
      ),
      Category(
        id: '4',
        name: 'Esportes',
        icon: '⚽',
        image: 'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=800',
        productCount: 670,
      ),
      Category(
        id: '5',
        name: 'Beleza',
        icon: '💄',
        image: 'https://images.unsplash.com/photo-1596462502278-27bfdc403348?w=800',
        productCount: 1120,
      ),
      Category(
        id: '6',
        name: 'Livros',
        icon: '📚',
        image: 'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?w=800',
        productCount: 3400,
      ),
      Category(
        id: '7',
        name: 'Joias',
        icon: '💎',
        image: 'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?w=800',
        productCount: 450,
      ),
      Category(
        id: '8',
        name: 'Brinquedos',
        icon: '🎮',
        image: 'https://images.unsplash.com/photo-1587760546497-3c2f6e3ad9f7?w=800',
        productCount: 780,
      ),
    ];
  }

  // Mock Banners
  static List<app_banner.Banner> getBanners() {
    return [
      app_banner.Banner(
        id: '1',
        title: 'Black Friday',
        subtitle: 'Até 70% OFF em Eletrônicos',
        image: 'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=1200',
        categoryId: '1',
      ),
      app_banner.Banner(
        id: '2',
        title: 'Verão 2024',
        subtitle: 'Moda & Acessórios',
        image: 'https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?w=1200',
        categoryId: '2',
      ),
      app_banner.Banner(
        id: '3',
        title: 'Smart Home',
        subtitle: 'Novos Lançamentos',
        image: 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=1200',
        categoryId: '3',
      ),
    ];
  }

  // Mock Products
  static List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'iPhone 15 Pro Max 256GB',
        description: 'O mais avançado iPhone já criado. Com chip A17 Pro, câmera de 48MP, tela Super Retina XDR de 6.7" e design em titânio premium.',
        price: 7999.00,
        originalPrice: 9499.00,
        images: [
          'https://images.unsplash.com/photo-1678685888221-cda773a3dcdb?w=800',
          'https://images.unsplash.com/photo-1696446702183-cbd0673c9266?w=800',
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=800',
        ],
        category: 'Eletrônicos',
        rating: 4.9,
        reviewCount: 2847,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/iphone15',
        stock: 45,
        tags: ['Premium', 'Lançamento', 'iPhone'],
        brand: 'Apple',
        discount: 16,
      ),
      Product(
        id: '2',
        name: 'Samsung Galaxy S24 Ultra',
        description: 'Potência máxima com Snapdragon 8 Gen 3, câmera de 200MP, S Pen integrada e tela AMOLED de 6.8".',
        price: 6499.00,
        originalPrice: 7999.00,
        images: [
          'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=800',
          'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=800',
        ],
        category: 'Eletrônicos',
        rating: 4.8,
        reviewCount: 1923,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/galaxy-s24',
        stock: 38,
        tags: ['Premium', 'Android'],
        brand: 'Samsung',
        discount: 19,
      ),
      Product(
        id: '3',
        name: 'MacBook Pro 14" M3 Pro',
        description: 'Performance revolucionária com chip M3 Pro, 18GB RAM, 512GB SSD, tela Liquid Retina XDR.',
        price: 14999.00,
        originalPrice: 17999.00,
        images: [
          'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800',
          'https://images.unsplash.com/photo-1541807084-5c52b6b3adef?w=800',
        ],
        category: 'Eletrônicos',
        rating: 5.0,
        reviewCount: 856,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/macbook-pro',
        stock: 12,
        tags: ['Premium', 'Notebook', 'Apple'],
        brand: 'Apple',
        discount: 17,
      ),
      Product(
        id: '4',
        name: 'Tênis Nike Air Max Plus',
        description: 'Conforto e estilo premium com tecnologia Air Max e design icônico. Perfeito para o dia a dia.',
        price: 899.90,
        originalPrice: 1299.90,
        images: [
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800',
          'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=800',
        ],
        category: 'Moda',
        rating: 4.7,
        reviewCount: 3421,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/nike-air-max',
        stock: 156,
        tags: ['Esporte', 'Casual'],
        brand: 'Nike',
        discount: 31,
      ),
      Product(
        id: '5',
        name: 'Smart Watch Ultra',
        description: 'Smartwatch premium com GPS, monitor cardíaco, resistência à água e bateria de 7 dias.',
        price: 1899.00,
        originalPrice: 2499.00,
        images: [
          'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?w=800',
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800',
        ],
        category: 'Eletrônicos',
        rating: 4.6,
        reviewCount: 1245,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/smartwatch',
        stock: 89,
        tags: ['Fitness', 'Smartwatch'],
        brand: 'TechPro',
        discount: 24,
      ),
      Product(
        id: '6',
        name: 'Bolsa Louis Fashion Premium',
        description: 'Bolsa de couro legítimo com acabamento luxuoso, design sofisticado e compartimentos inteligentes.',
        price: 2499.00,
        originalPrice: 3999.00,
        images: [
          'https://images.unsplash.com/photo-1584917865442-de89df76afd3?w=800',
          'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=800',
        ],
        category: 'Moda',
        rating: 4.9,
        reviewCount: 678,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/bolsa-premium',
        stock: 34,
        tags: ['Luxo', 'Couro'],
        brand: 'Louis Fashion',
        discount: 38,
      ),
      Product(
        id: '7',
        name: 'Fone Sony WH-1000XM5',
        description: 'Cancelamento de ruído líder de mercado, áudio de alta resolução e conforto incomparável.',
        price: 1899.00,
        originalPrice: 2399.00,
        images: [
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=800',
          'https://images.unsplash.com/photo-1484704849700-f032a568e944?w=800',
        ],
        category: 'Eletrônicos',
        rating: 4.9,
        reviewCount: 2134,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/sony-headphones',
        stock: 67,
        tags: ['Áudio', 'Premium'],
        brand: 'Sony',
        discount: 21,
      ),
      Product(
        id: '8',
        name: 'Cafeteira Nespresso Vertuo',
        description: 'Sistema de café premium com tecnologia de extração por centrífuga. Prepara 5 tamanhos de xícara.',
        price: 899.00,
        originalPrice: 1299.00,
        images: [
          'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800',
        ],
        category: 'Casa',
        rating: 4.7,
        reviewCount: 892,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/nespresso',
        stock: 43,
        tags: ['Café', 'Cozinha'],
        brand: 'Nespresso',
        discount: 31,
      ),
      Product(
        id: '9',
        name: 'PlayStation 5 Digital',
        description: 'Console de última geração com gráficos em 4K/120fps, SSD ultrarrápido e controle DualSense.',
        price: 3499.00,
        originalPrice: 4299.00,
        images: [
          'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?w=800',
          'https://images.unsplash.com/photo-1622297845775-5ff3fef71d13?w=800',
        ],
        category: 'Eletrônicos',
        rating: 4.9,
        reviewCount: 4567,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/ps5',
        stock: 8,
        tags: ['Games', 'Console'],
        brand: 'Sony',
        discount: 19,
      ),
      Product(
        id: '10',
        name: 'iPad Pro 12.9" M2',
        description: 'Poder de um computador em um tablet. Chip M2, tela Liquid Retina XDR, compatível com Apple Pencil.',
        price: 9999.00,
        originalPrice: 12999.00,
        images: [
          'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=800',
          'https://images.unsplash.com/photo-1585790050230-5dd28404f905?w=800',
        ],
        category: 'Eletrônicos',
        rating: 4.8,
        reviewCount: 1432,
        freeShipping: true,
        affiliateLink: 'https://affiliate.link/ipad-pro',
        stock: 23,
        tags: ['Tablet', 'Premium', 'Apple'],
        brand: 'Apple',
        discount: 23,
      ),
    ];
  }

  // Get products by category
  static List<Product> getProductsByCategory(String categoryName) {
    return getProducts().where((product) => product.category == categoryName).toList();
  }

  // Get featured products
  static List<Product> getFeaturedProducts() {
    return getProducts().where((product) => product.rating >= 4.8).toList();
  }

  // Get deal products (with discount)
  static List<Product> getDealProducts() {
    return getProducts().where((product) => product.hasDiscount).toList();
  }

  // Mock Reviews
  static List<Review> getProductReviews(String productId) {
    return [
      Review(
        id: '1',
        productId: productId,
        userId: 'user1',
        userName: 'João Silva',
        userAvatar: 'https://i.pravatar.cc/150?img=11',
        rating: 5.0,
        comment: 'Produto excelente! Superou minhas expectativas. Entrega rápida e bem embalado.',
        createdAt: DateTime.now().subtract(const Duration(days: 5)),
        images: [],
        helpfulCount: 24,
      ),
      Review(
        id: '2',
        productId: productId,
        userId: 'user2',
        userName: 'Maria Santos',
        userAvatar: 'https://i.pravatar.cc/150?img=25',
        rating: 5.0,
        comment: 'Melhor compra que fiz este ano! Qualidade premium e atendimento impecável.',
        createdAt: DateTime.now().subtract(const Duration(days: 12)),
        images: [],
        helpfulCount: 18,
      ),
      Review(
        id: '3',
        productId: productId,
        userId: 'user3',
        userName: 'Pedro Oliveira',
        userAvatar: 'https://i.pravatar.cc/150?img=33',
        rating: 4.0,
        comment: 'Muito bom, mas o preço poderia ser melhor. No geral, estou satisfeito.',
        createdAt: DateTime.now().subtract(const Duration(days: 18)),
        images: [],
        helpfulCount: 12,
      ),
      Review(
        id: '4',
        productId: productId,
        userId: 'user4',
        userName: 'Ana Costa',
        userAvatar: 'https://i.pravatar.cc/150?img=47',
        rating: 5.0,
        comment: 'Perfeito! Exatamente como descrito. Recomendo muito!',
        createdAt: DateTime.now().subtract(const Duration(days: 25)),
        images: [],
        helpfulCount: 31,
      ),
    ];
  }

  // Search products
  static List<Product> searchProducts(String query) {
    if (query.isEmpty) return getProducts();
    
    final lowerQuery = query.toLowerCase();
    return getProducts().where((product) {
      return product.name.toLowerCase().contains(lowerQuery) ||
          product.description.toLowerCase().contains(lowerQuery) ||
          product.category.toLowerCase().contains(lowerQuery) ||
          product.brand.toLowerCase().contains(lowerQuery);
    }).toList();
  }

  // Filter products
  static List<Product> filterProducts({
    List<Product>? products,
    double? minPrice,
    double? maxPrice,
    double? minRating,
    bool? freeShipping,
    String? category,
  }) {
    var filtered = products ?? getProducts();

    if (minPrice != null) {
      filtered = filtered.where((p) => p.price >= minPrice).toList();
    }
    if (maxPrice != null) {
      filtered = filtered.where((p) => p.price <= maxPrice).toList();
    }
    if (minRating != null) {
      filtered = filtered.where((p) => p.rating >= minRating).toList();
    }
    if (freeShipping == true) {
      filtered = filtered.where((p) => p.freeShipping).toList();
    }
    if (category != null && category.isNotEmpty) {
      filtered = filtered.where((p) => p.category == category).toList();
    }

    return filtered;
  }
}
