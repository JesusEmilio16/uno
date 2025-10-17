import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final nombreProvider = Provider((ref) => "Jesus Emilio");
final countProvider = StateProvider<int>((int) => 0);
final themeProvider = StateProvider<bool>((ref) => false);
