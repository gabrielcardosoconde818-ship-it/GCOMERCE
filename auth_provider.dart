import 'package:flutter/foundation.dart';
import '../models/user.dart';

class AuthProvider extends ChangeNotifier {
  User? _currentUser;
  bool _isAuthenticated = false;

  User? get currentUser => _currentUser;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));
    
    _currentUser = User(
      id: '1',
      name: 'Usuário Premium',
      email: email,
      phone: '+55 11 98765-4321',
      avatar: 'https://i.pravatar.cc/300',
      createdAt: DateTime.now(),
      addresses: [],
    );
    
    _isAuthenticated = true;
    notifyListeners();
  }

  Future<void> register(String name, String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));
    
    _currentUser = User(
      id: '1',
      name: name,
      email: email,
      createdAt: DateTime.now(),
      addresses: [],
    );
    
    _isAuthenticated = true;
    notifyListeners();
  }

  Future<void> loginWithGoogle() async {
    // Simulate Google login
    await Future.delayed(const Duration(seconds: 2));
    
    _currentUser = User(
      id: '1',
      name: 'Usuário Google',
      email: 'user@gmail.com',
      avatar: 'https://i.pravatar.cc/300',
      createdAt: DateTime.now(),
      addresses: [],
    );
    
    _isAuthenticated = true;
    notifyListeners();
  }

  Future<void> loginWithFacebook() async {
    // Simulate Facebook login
    await Future.delayed(const Duration(seconds: 2));
    
    _currentUser = User(
      id: '1',
      name: 'Usuário Facebook',
      email: 'user@facebook.com',
      avatar: 'https://i.pravatar.cc/300',
      createdAt: DateTime.now(),
      addresses: [],
    );
    
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _currentUser = null;
    _isAuthenticated = false;
    notifyListeners();
  }

  void updateUser(User user) {
    _currentUser = user;
    notifyListeners();
  }
}
