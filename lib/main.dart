import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uts_mobile_newest/features/auth/presentation/pages/splash_screen.dart';
import 'package:uts_mobile_newest/core/theme/app_theme.dart';
import 'package:uts_mobile_newest/core/theme/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// Kita ubah jadi ConsumerWidget agar bisa 'mendengarkan' perubahan tema
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Kita 'tonton' themeProvider. Jika nilainya berubah, build dipanggil ulang!
    final currentTheme = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: currentTheme, // Gunakan tema sesuai state
      home: const SplashScreen(),
    );
  }
}