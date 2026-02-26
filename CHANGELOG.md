# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Semantic Versioning](https://semver.org/lang/pt-BR/).

## [1.0.0] - 2024-02-25

### ✨ Adicionado
- Splash Screen animada com logo dourado e efeitos shimmer
- Onboarding com 3 telas de apresentação (Marketplace, Entrega, Segurança)
- Sistema completo de autenticação (Login/Cadastro)
- Login social com Google e Facebook
- Home Screen com banners auto-scroll
- Grid de categorias interativo (8 categorias)
- Seção "Mais Vendidos" com produtos premium
- "Ofertas do Dia" com countdown timer em tempo real
- Sistema de busca avançada com múltiplos filtros
  - Filtro por faixa de preço (R$ 0 - R$ 20.000)
  - Filtro por avaliação mínima (0-5 estrelas)
  - Filtro por frete grátis
  - Filtro por categoria
- Tela de detalhes do produto com:
  - Galeria de imagens com PageView
  - Informações completas do produto
  - Sistema de avaliações com comentários
  - Badge de desconto em destaque
  - Botão "Comprar via Afiliado"
  - Botão adicionar ao carrinho
  - Produtos relacionados
- Carrinho de compras completo:
  - Adicionar/remover produtos
  - Ajustar quantidade com +/-
  - Cálculo automático de subtotal
  - Cálculo de frete (R$ 15 ou grátis acima de R$ 200)
  - Indicador de progresso para frete grátis
  - Total calculado automaticamente
- Sistema de favoritos
  - Marcar/desmarcar produtos como favoritos
  - Tela dedicada de favoritos
  - Sincronização em tempo real
- Tela de Checkout:
  - Formulário de endereço de entrega
  - Opções de pagamento (Pix, Cartão, Boleto)
  - Resumo detalhado do pedido
  - Validação de formulário
  - Confirmação de pedido com feedback visual
- Perfil do usuário:
  - Foto de perfil
  - Informações pessoais
  - Menu de opções (Pedidos, Endereços, Pagamentos, Notificações, Ajuda, Configurações)
  - Logout
- Bottom Navigation Bar com 5 abas:
  - Home, Buscar, Carrinho (com badge de contagem), Favoritos, Perfil
  - Ícones animados e destacados

### 🎨 Design
- Tema luxuoso premium com dark mode
- Paleta de cores dourado (#FFD700) e preto (#0A0A0A)
- Gradientes dourados em elementos premium
- Shadows e elevações sofisticadas
- Animações fluidas e transições suaves
- Tipografia elegante (Playfair Display + Inter)
- Componentes customizados de alta qualidade

### 🏗️ Arquitetura
- Provider Pattern para gerenciamento de estado
- Separação clara de responsabilidades (models, providers, services, screens, widgets)
- Componentes reutilizáveis (ProductCard, CategoryCard)
- Clean Architecture com camadas bem definidas
- Material Design 3 com customizações

### 📦 Dados
- 10 produtos mockados de alta qualidade
- 8 categorias diversificadas
- 3 banners promocionais
- Sistema completo de avaliações
- Dados de usuários para autenticação

### 🔧 Funcionalidades Técnicas
- Cache de imagens com Cached Network Image
- Lazy loading de imagens
- Validação de formulários
- Formatação de moeda brasileira
- Cálculos em tempo real (carrinho, frete, descontos)
- Navegação fluida entre telas
- Estado persistente entre navegações
- Error handling

### 📱 Compatibilidade
- iOS 12.0+
- Android API 21+ (Android 5.0 Lollipop)
- Suporte a diferentes tamanhos de tela
- Orientação portrait

### 📚 Documentação
- README.md completo com instruções
- INSTALL.md com guia de instalação detalhado
- Comentários no código
- Estrutura de pastas organizada

---

## [Planejado para v1.1.0]

### 🔮 Futuras Melhorias
- [ ] Tela de Pedidos com histórico completo
- [ ] Sistema de rastreamento de pedidos
- [ ] Notificações push
- [ ] Integração com APIs reais de afiliados
- [ ] Sistema de cupons de desconto
- [ ] Chat de suporte ao cliente
- [ ] Compartilhamento de produtos nas redes sociais
- [ ] Wishlist pública para compartilhar
- [ ] Sistema de pontos/cashback
- [ ] Integração com gateways de pagamento reais (Stripe, MercadoPago)
- [ ] Modo offline básico
- [ ] Testes unitários e de integração
- [ ] CI/CD pipeline

---

## Tipos de Mudanças
- **✨ Adicionado** para novas funcionalidades
- **🔄 Modificado** para mudanças em funcionalidades existentes
- **❌ Depreciado** para funcionalidades que serão removidas
- **🗑️ Removido** para funcionalidades removidas
- **🐛 Corrigido** para correções de bugs
- **🔒 Segurança** para vulnerabilidades corrigidas
