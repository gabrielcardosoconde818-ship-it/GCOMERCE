import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/app_theme.dart';
import '../providers/cart_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();
  String _selectedPayment = 'pix';
  bool _isProcessing = false;

  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _zipController = TextEditingController();

  Future<void> _processCheckout() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isProcessing = true);
      
      await Future.delayed(const Duration(seconds: 2));
      
      if (mounted) {
        Provider.of<CartProvider>(context, listen: false).clear();
        
        Navigator.of(context).popUntil((route) => route.isFirst);
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ Pedido realizado com sucesso!'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Finalizar Compra')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Endereço de Entrega', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.primaryGold)),
              const SizedBox(height: 16),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Endereço', prefixIcon: Icon(Icons.home, color: AppTheme.primaryGold)),
                validator: (value) => value?.isEmpty ?? true ? 'Campo obrigatório' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _cityController,
                decoration: const InputDecoration(labelText: 'Cidade', prefixIcon: Icon(Icons.location_city, color: AppTheme.primaryGold)),
                validator: (value) => value?.isEmpty ?? true ? 'Campo obrigatório' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _zipController,
                decoration: const InputDecoration(labelText: 'CEP', prefixIcon: Icon(Icons.mail, color: AppTheme.primaryGold)),
                keyboardType: TextInputType.number,
                validator: (value) => value?.isEmpty ?? true ? 'Campo obrigatório' : null,
              ),
              const SizedBox(height: 32),
              const Text('Forma de Pagamento', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.primaryGold)),
              const SizedBox(height: 16),
              RadioListTile<String>(
                title: const Text('Pix'),
                subtitle: const Text('Aprovação instantânea'),
                value: 'pix',
                groupValue: _selectedPayment,
                activeColor: AppTheme.primaryGold,
                onChanged: (value) => setState(() => _selectedPayment = value!),
              ),
              RadioListTile<String>(
                title: const Text('Cartão de Crédito'),
                subtitle: const Text('Em até 12x sem juros'),
                value: 'credit_card',
                groupValue: _selectedPayment,
                activeColor: AppTheme.primaryGold,
                onChanged: (value) => setState(() => _selectedPayment = value!),
              ),
              RadioListTile<String>(
                title: const Text('Boleto'),
                subtitle: const Text('Vencimento em 3 dias'),
                value: 'boleto',
                groupValue: _selectedPayment,
                activeColor: AppTheme.primaryGold,
                onChanged: (value) => setState(() => _selectedPayment = value!),
              ),
              const SizedBox(height: 32),
              const Text('Resumo do Pedido', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.primaryGold)),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.richBlack,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppTheme.darkGray),
                ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      const Text('Subtotal:'),
                      Text('R\$ ${cartProvider.subtotal.toStringAsFixed(2)}'),
                    ]),
                    const SizedBox(height: 8),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      const Text('Frete:'),
                      Text(cartProvider.shipping == 0 ? 'Grátis' : 'R\$ ${cartProvider.shipping.toStringAsFixed(2)}',
                        style: TextStyle(color: cartProvider.shipping == 0 ? AppTheme.accentGreen : null)),
                    ]),
                    const Divider(height: 24),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      const Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('R\$ ${cartProvider.total.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.primaryGold)),
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _isProcessing ? null : _processCheckout,
                  child: _isProcessing
                      ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2, color: AppTheme.deepBlack))
                      : const Text('Confirmar Pedido'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
