import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uts_mobile_newest/core/constants/app_constants.dart';

// State untuk menyimpan username & role yang sedang login
class AuthState {
  final String username;
  final UserRole role;

  AuthState({required this.username, required this.role});
}

final authProvider = StateProvider<AuthState?>((ref) => null);