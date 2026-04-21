import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uts_mobile_newest/features/auth/presentation/providers/auth_provider.dart';
import 'package:uts_mobile_newest/core/constants/app_constants.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Kita memantau (watch) authProvider untuk tahu siapa yang login
    final authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halo, ${authState?.username ?? 'Guest'}"),
            const SizedBox(height: 20),
            
            // Conditional Rendering berdasarkan Role
            if (authState?.role == UserRole.admin)
              const Text("Mode Admin: Kamu bisa melihat semua tiket.", 
                         style: TextStyle(color: Colors.red)),
            
            if (authState?.role == UserRole.user)
              const Text("Mode User: Kamu hanya melihat tiketmu sendiri.", 
                         style: TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}