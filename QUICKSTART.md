# ⚡ GCOMERCE - Quick Start Guide

Comece a usar o GCOMERCE em 5 minutos! 🚀

---

## 🎯 Pré-requisitos Rápidos

Antes de começar, certifique-se de ter:

- ✅ Flutter SDK 3.0+ instalado
- ✅ Um emulador Android ou iOS rodando
- ✅ Conexão com a internet (para carregar imagens)

Verifique se está tudo certo:
```bash
flutter doctor
```

---

## 🚀 Início Rápido (3 Passos)

### 1️⃣ Clonar e Instalar
```bash
# Clone o repositório
git clone <repository-url>
cd gcomerce

# Instale as dependências
flutter pub get
```

### 2️⃣ Executar
```bash
# Execute o app
flutter run
```

### 3️⃣ Testar
Use as credenciais abaixo para fazer login:
- **Email:** qualquer email válido (ex: `usuario@teste.com`)
- **Senha:** qualquer senha com 6+ caracteres (ex: `123456`)

---

## 📱 Navegação Rápida no App

### 🎬 Primeira Experiência
1. **Splash Screen** (3s) → Logo dourado animado
2. **Onboarding** (3 páginas) → Apresentação do app
3. **Login** → Entre com qualquer email/senha válidos

### 🏠 Home (Aba 1)
- 📸 **Banners** → Scroll automático a cada 5s
- 🏷️ **Categorias** → 8 categorias, clique para ver produtos
- ⭐ **Mais Vendidos** → Produtos com avaliação 4.8+
- 🔥 **Ofertas do Dia** → Produtos em promoção com countdown

### 🔍 Buscar (Aba 2)
- Digite o nome do produto
- Use o ícone de filtro para:
  - Ajustar faixa de preço
  - Definir avaliação mínima
  - Ativar "só frete grátis"

### 🛒 Carrinho (Aba 3)
- Adicione produtos clicando no ícone do carrinho
- Ajuste quantidade com +/-
- Veja o cálculo automático de frete
- **Dica:** Frete grátis acima de R$ 200!

### ❤️ Favoritos (Aba 4)
- Clique no ❤️ nos produtos para favoritar
- Acesse aqui todos os seus favoritos

### 👤 Perfil (Aba 5)
- Veja suas informações
- Acesse configurações
- Faça logout

---

## 🎨 Destaques do Design

### Cores Principais
- 🟡 **Dourado** (#FFD700) → Destaques, botões premium
- ⚫ **Preto** (#0A0A0A) → Background elegante
- ⚪ **Branco** → Textos principais

### Elementos Premium
- ✨ Gradientes dourados
- 💫 Animações suaves
- 🎭 Sombras elegantes
- 🔄 Transições fluidas

---

## 🛍️ Testando o Fluxo de Compra

### Caminho Completo (do produto ao pedido)

1. **Escolha um produto**
   - Home → Clique em qualquer produto
   - Ou busque por "iPhone", "Samsung", "MacBook"

2. **Veja os detalhes**
   - Galeria de fotos (swipe)
   - Avaliações e comentários
   - Preço com desconto

3. **Adicione ao carrinho**
   - Clique no botão dourado "Adicionar ao Carrinho"
   - Ou clique no ícone de carrinho no card

4. **Vá para o carrinho**
   - Clique na aba Carrinho (3ª aba)
   - Ajuste quantidade se necessário

5. **Finalize a compra**
   - Clique em "Finalizar Compra"
   - Preencha o endereço
   - Escolha forma de pagamento
   - Clique em "Confirmar Pedido"

6. **Sucesso! 🎉**
   - Mensagem de confirmação
   - Carrinho limpo
   - Redirecionado para home

---

## 💡 Dicas e Atalhos

### Atalhos de Teclado (durante desenvolvimento)
- `r` → Hot reload (atualiza código sem perder estado)
- `R` → Hot restart (reinicia app)
- `q` → Quit (fecha app)
- `s` → Screenshot

### Funcionalidades Escondidas
- 🔍 **Busca vazia** → Mostra todos os produtos
- ❤️ **Duplo clique no favorito** → Remove favorito
- 🛒 **Badge vermelho no carrinho** → Mostra quantidade de itens
- ⏱️ **Timer das ofertas** → Reseta a cada 24h

### Dados de Teste
O app vem com:
- 📦 10 produtos premium mockados
- 🏷️ 8 categorias
- 📸 3 banners rotativos
- ⭐ Sistema de avaliações
- 👥 Usuários de exemplo

---

## 🐛 Problemas Comuns

### App não carrega imagens?
- ✅ Verifique sua conexão com internet
- ✅ As imagens vêm do Unsplash (CDN)
- ✅ Aguarde alguns segundos no primeiro carregamento

### Erro ao executar?
```bash
# Limpe o cache e tente novamente
flutter clean
flutter pub get
flutter run
```

### Emulador lento?
- Use um dispositivo físico para melhor performance
- Ou ajuste as configurações do emulador

---

## 📚 Próximos Passos

Depois de explorar o app:

1. 📖 Leia o **[README.md](README.md)** completo
2. 🔧 Veja **[FEATURES.md](FEATURES.md)** para todas as funcionalidades
3. 🏗️ Entenda a arquitetura em **[PROJECT_STRUCTURE.md](PROJECT_STRUCTURE.md)**
4. 💻 Consulte **[INSTALL.md](INSTALL.md)** para configurações avançadas

---

## 🎓 Aprenda Modificando

### Exercícios Práticos

**Nível Iniciante:**
- [ ] Mude as cores do tema em `app_theme.dart`
- [ ] Adicione um novo produto em `data_service.dart`
- [ ] Altere o texto do onboarding

**Nível Intermediário:**
- [ ] Adicione uma nova categoria
- [ ] Crie um filtro de ordenação (A-Z, preço)
- [ ] Implemente persistência com SharedPreferences

**Nível Avançado:**
- [ ] Integre com uma API real
- [ ] Adicione testes unitários
- [ ] Implemente animações customizadas

---

## 🆘 Precisa de Ajuda?

### Recursos
- 📖 [Documentação Flutter](https://docs.flutter.dev/)
- 💬 [Stack Overflow](https://stackoverflow.com/questions/tagged/flutter)
- 🎮 [Flutter Community](https://flutter.dev/community)

### Contato
- 📧 Email: suporte@gcomerce.com
- 🐛 Issues: GitHub Issues

---

## 🎉 Divirta-se!

Explore todas as funcionalidades, teste diferentes fluxos e veja o poder do Flutter em ação!

**Dica final:** Use o Hot Reload (`r`) constantemente durante o desenvolvimento. É mágico! ✨

---

<div align="center">

**🚀 Agora você está pronto para dominar o GCOMERCE!**

Happy coding! 💛

</div>
