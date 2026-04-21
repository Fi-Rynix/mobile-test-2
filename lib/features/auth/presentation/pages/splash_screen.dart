import 'package:flutter/material.dart';
import 'package:uts_mobile_newest/features/auth/presentation/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Fungsi untuk menunggu 2 detik, lalu berpindah halaman
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Tampilan sederhana di layar
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Ikon loading lingkaran
      ),
    );
  }
}