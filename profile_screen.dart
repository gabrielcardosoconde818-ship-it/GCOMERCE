import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/app_theme.dart';
import '../providers/auth_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          final user = authProvider.currentUser;

          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: user?.avatar != null ? NetworkImage(user!.avatar!) : null,
                  backgroundColor: AppTheme.primaryGold,
                  child: user?.avatar == null ? const Icon(Icons.person, size: 60, color: AppTheme.deepBlack) : null,
                ),
                const SizedBox(height: 16),
                Text(user?.name ?? 'Usuário', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(user?.email ?? '', style: const TextStyle(color: AppTheme.textSecondary)),
                const SizedBox(height: 32),
                ListTile(
                  leading: const Icon(Icons.shopping_bag_outlined, color: AppTheme.primaryGold),
                  title: const Text('Meus Pedidos'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_outlined, color: AppTheme.primaryGold),
                  title: const Text('Endereços'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.credit_card_outlined, color: AppTheme.primaryGold),
                  title: const Text('Pagamentos'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications_outlined, color: AppTheme.primaryGold),
                  title: const Text('Notificações'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline, color: AppTheme.primaryGold),
                  title: const Text('Ajuda e Suporte'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings_outlined, color: AppTheme.primaryGold),
                  title: const Text('Configurações'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      authProvider.logout();
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    icon: const Icon(Icons.logout),
                    label: const Text('Sair da Conta'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppTheme.accentRed,
                      side: const BorderSide(color: AppTheme.accentRed),
                      minimumSize: const Size(double.infinity, 56),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
