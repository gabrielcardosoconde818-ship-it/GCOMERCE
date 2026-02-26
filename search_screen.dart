import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';
import '../widgets/product_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Product> _searchResults = [];
  bool _isSearching = false;
  
  // Filters
  double _minPrice = 0;
  double _maxPrice = 20000;
  double _minRating = 0;
  bool _freeShippingOnly = false;

  void _performSearch() {
    setState(() {
      _isSearching = true;
      _searchResults = DataService.searchProducts(_searchController.text);
      _searchResults = DataService.filterProducts(
        products: _searchResults,
        minPrice: _minPrice,
        maxPrice: _maxPrice,
        minRating: _minRating,
        freeShipping: _freeShippingOnly ? true : null,
      );
    });
  }

  void _showFilters() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.richBlack,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Filtros', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppTheme.primaryGold)),
              const SizedBox(height: 24),
              Text('Preço: R\$ ${_minPrice.toStringAsFixed(0)} - R\$ ${_maxPrice.toStringAsFixed(0)}'),
              RangeSlider(
                values: RangeValues(_minPrice, _maxPrice),
                min: 0,
                max: 20000,
                divisions: 100,
                activeColor: AppTheme.primaryGold,
                onChanged: (RangeValues values) {
                  setModalState(() {
                    _minPrice = values.start;
                    _maxPrice = values.end;
                  });
                },
              ),
              const SizedBox(height: 16),
              Text('Avaliação mínima: ${_minRating.toStringAsFixed(1)}'),
              Slider(
                value: _minRating,
                min: 0,
                max: 5,
                divisions: 10,
                activeColor: AppTheme.primaryGold,
                onChanged: (value) {
                  setModalState(() => _minRating = value);
                },
              ),
              CheckboxListTile(
                title: const Text('Apenas frete grátis'),
                value: _freeShippingOnly,
                activeColor: AppTheme.primaryGold,
                onChanged: (value) {
                  setModalState(() => _freeShippingOnly = value ?? false);
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    _performSearch();
                    Navigator.pop(context);
                  },
                  child: const Text('Aplicar Filtros'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Buscar produtos...',
                      prefixIcon: const Icon(Icons.search, color: AppTheme.primaryGold),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                setState(() {
                                  _isSearching = false;
                                  _searchResults = [];
                                });
                              },
                            )
                          : null,
                    ),
                    onSubmitted: (_) => _performSearch(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.filter_list, color: AppTheme.primaryGold),
                  onPressed: _showFilters,
                ),
              ],
            ),
          ),
          Expanded(
            child: _isSearching
                ? _searchResults.isEmpty
                    ? const Center(child: Text('Nenhum produto encontrado'))
                    : GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.65,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: _searchResults.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: _searchResults[index]);
                        },
                      )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, size: 80, color: AppTheme.textTertiary),
                        const SizedBox(height: 16),
                        Text('Busque por produtos', style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
