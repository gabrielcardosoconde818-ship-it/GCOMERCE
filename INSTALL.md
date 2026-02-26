# GCOMERCE - Guia de Instalação e Configuração

## 📋 Requisitos do Sistema

### Software Necessário
- **Flutter SDK:** 3.0 ou superior
- **Dart SDK:** 3.0 ou superior
- **Android Studio:** 2022.1 ou superior (para Android)
- **Xcode:** 14.0 ou superior (para iOS, apenas macOS)
- **Git:** Para clonar o repositório

### Configuração do Ambiente

#### 1. Instalar Flutter

**Windows:**
1. Baixe o Flutter SDK: https://docs.flutter.dev/get-started/install/windows
2. Extraia o arquivo ZIP
3. Adicione Flutter ao PATH
4. Execute `flutter doctor` para verificar

**macOS:**
```bash
brew install flutter
flutter doctor
```

**Linux:**
```bash
sudo snap install flutter --classic
flutter doctor
```

#### 2. Configurar Android Studio

1. Instale o Android Studio
2. Abra Android Studio → Settings → Plugins
3. Instale os plugins: Flutter e Dart
4. Configure o Android SDK (API 21+)
5. Crie um emulador Android

#### 3. Configurar Xcode (macOS apenas)

```bash
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```

## 🚀 Instalação do Projeto

### Passo 1: Clonar o Repositório
```bash
git clone https://github.com/seu-usuario/gcomerce.git
cd gcomerce
```

### Passo 2: Instalar Dependências
```bash
flutter pub get
```

### Passo 3: Verificar Configuração
```bash
flutter doctor -v
```

### Passo 4: Executar o Projeto

**No emulador Android:**
```bash
flutter run
```

**No iOS Simulator:**
```bash
flutter run -d ios
```

**Escolher dispositivo específico:**
```bash
flutter devices  # Lista dispositivos disponíveis
flutter run -d <device-id>
```

## 📱 Testando o App

### Dados de Teste para Login
- **Email:** qualquer email válido (ex: teste@gcomerce.com)
- **Senha:** qualquer senha com 6+ caracteres (ex: 123456)

### Funcionalidades Principais para Testar
1. ✅ Navegue pelo Onboarding
2. ✅ Faça login ou cadastro
3. ✅ Explore os banners na home
4. ✅ Navegue pelas categorias
5. ✅ Busque produtos e use filtros
6. ✅ Adicione produtos ao carrinho
7. ✅ Marque produtos como favoritos
8. ✅ Finalize uma compra no checkout
9. ✅ Verifique o perfil do usuário

## 🔧 Solução de Problemas

### Erro: "Unable to locate Android SDK"
```bash
flutter config --android-sdk /path/to/android/sdk
```

### Erro: "CocoaPods not installed" (iOS)
```bash
sudo gem install cocoapods
cd ios && pod install
```

### Erro: "Gradle build failed"
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
```

### App não carrega imagens
- Verifique sua conexão com a internet
- As imagens são carregadas do Unsplash via CDN

## 🏗️ Build para Produção

### Android APK
```bash
flutter build apk --release
# APK localizado em: build/app/outputs/flutter-apk/app-release.apk
```

### Android App Bundle (Google Play)
```bash
flutter build appbundle --release
# Bundle localizado em: build/app/outputs/bundle/release/app-release.aab
```

### iOS
```bash
flutter build ios --release
# Abra o Xcode e faça o archive manualmente
```

## 📊 Performance e Otimização

### Analisar Performance
```bash
flutter run --profile
```

### Reduzir tamanho do APK
```bash
flutter build apk --split-per-abi --release
```

### Verificar dependências não utilizadas
```bash
flutter pub outdated
flutter pub upgrade
```

## 🔐 Configurações de Segurança

### Obfuscate Code (Ofuscar código)
```bash
flutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>
```

## 📚 Recursos Adicionais

- [Documentação Flutter](https://docs.flutter.dev/)
- [Pub.dev Packages](https://pub.dev/)
- [Flutter Community](https://flutter.dev/community)
- [Stack Overflow - Flutter](https://stackoverflow.com/questions/tagged/flutter)

## 💡 Dicas de Desenvolvimento

1. **Hot Reload:** Pressione `r` no terminal para hot reload
2. **Hot Restart:** Pressione `R` para hot restart
3. **Logs:** Use `flutter logs` para ver logs em tempo real
4. **Inspecionar Widget:** Use Flutter DevTools para debugging

## 🆘 Suporte

Se encontrar problemas:
1. Verifique as [issues do GitHub](https://github.com/seu-usuario/gcomerce/issues)
2. Crie uma nova issue com detalhes do erro
3. Entre em contato: suporte@gcomerce.com

---

**Boa sorte com o desenvolvimento! 🚀**
