import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';
import '../providers/cart_provider.dart';
import '../providers/favorites_provider.dart';
import '../services/data_service.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final PageController _imageController = PageController();
  int _currentImageIndex = 0;

  Future<void> _openAffiliateLink() async {
    final Uri url = Uri.parse(widget.product.affiliateLink);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final reviews = DataService.getProductReviews(widget.product.id);
    
    return Scaffold(
      backgroundColor: AppTheme.deepBlack,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                    controller: _imageController,
                    onPageChanged: (index) {
                      setState(() => _currentImageIndex = index);
                    },
                    itemCount: widget.product.images.length,
                    itemBuilder: (context, index) {
                      return CachedNetworkImage(
                        imageUrl: widget.product.images[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                      ),
                    ),
                  ),
                  if (widget.product.hasDiscount)
                    Positioned(
                      top: 60,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          gradient: AppTheme.goldGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '-${widget.product.discountPercentage}% OFF',
                          style: const TextStyle(
                            color: AppTheme.deepBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            actions: [
              Consumer<FavoritesProvider>(
                builder: (context, favProvider, child) {
                  final isFavorite = favProvider.isFavorite(widget.product.id);
                  return IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? AppTheme.accentRed : AppTheme.primaryGold,
                    ),
                    onPressed: () {
                      favProvider.toggleFavorite(widget.product);
                    },
                  );
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.brand, style: const TextStyle(color: AppTheme.primaryGold)),
                  const SizedBox(height: 8),
                  Text(widget.product.name, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: widget.product.rating,
                        itemBuilder: (context, index) => const Icon(Icons.star, color: AppTheme.primaryGold),
                        itemCount: 5,
                        itemSize: 20.0,
                      ),
                      const SizedBox(width: 8),
                      Text('${widget.product.rating} (${widget.product.reviewCount} avaliações)'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  if (widget.product.hasDiscount)
                    Text(
                      'De: R\$ ${widget.product.originalPrice!.toStringAsFixed(2)}',
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: AppTheme.textTertiary,
                      ),
                    ),
                  Text(
                    'R\$ ${widget.product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: AppTheme.primaryGold,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text('Descrição', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(widget.product.description, style: const TextStyle(color: AppTheme.textSecondary)),
                  const SizedBox(height: 24),
                  Text('Avaliações (${reviews.length})', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  ...reviews.map((review) => Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: CachedNetworkImageProvider(review.userAvatar ?? ''),
                                radius: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(review.userName, style: const TextStyle(fontWeight: FontWeight.bold)),
                                    RatingBarIndicator(
                                      rating: review.rating,
                                      itemBuilder: (context, index) => const Icon(Icons.star, color: AppTheme.primaryGold),
                                      itemCount: 5,
                                      itemSize: 14.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(review.comment),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: AppTheme.richBlack,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: _openAffiliateLink,
                icon: const Icon(Icons.shopping_bag),
                label: const Text('Comprar via Afiliado'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Consumer<CartProvider>(
                builder: (context, cartProvider, child) {
                  return OutlinedButton.icon(
                    onPressed: () {
                      cartProvider.addItem(widget.product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Adicionado ao carrinho'), backgroundColor: AppTheme.accentGreen),
                      );
                    },
                    icon: const Icon(Icons.add_shopping_cart),
                    label: const Text('Carrinho'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
