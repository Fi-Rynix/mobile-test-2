import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uts_mobile_newest/core/constants/app_constants.dart';
import 'package:uts_mobile_newest/features/auth/presentation/providers/auth_provider.dart';
import 'package:uts_mobile_newest/features/dashboard/presentation/pages/dashboard_page.dart';

// Kita pakai ConsumerStatefulWidget supaya bisa memakai Riverpod (ref)
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  // Controller untuk mengambil teks dari inputan user
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleLogin() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username == 'admin' && password == 'admin123') {
      ref.read(authProvider.notifier).state = AuthState(username: username, role: UserRole.admin);
      
      // Navigasi ke Dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardPage()),
      );
      
    } else if (username == 'user1' && password == 'password') {
      ref.read(authProvider.notifier).state = AuthState(username: username, role: UserRole.user);
      
      // Navigasi ke Dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Gagal!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _usernameController, decoration: const InputDecoration(labelText: 'Username')),
            TextField(controller: _passwordController, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _handleLogin, child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}