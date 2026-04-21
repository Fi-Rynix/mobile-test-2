import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// StateProvider ini menyimpan status mode tema (ThemeMode)
// Defaultnya kita set ke 'light'
final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);