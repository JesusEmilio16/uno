export 'package:uno/presentation/screens/card/card.dart';
export 'package:uno/presentation/screens/home/home.dart';
export 'package:uno/presentation/screens/button/button.dart';
export 'package:uno/presentation/screens/from/from_screen.dart';
export 'package:uno/presentation/screens/count/count.dart';
export 'package:uno/presentation/screens/peticion/peticion_screen.dart';
export 'package:uno/presentation/screens/infinity/infinityScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uno/config/router/router.dart';
import 'package:uno/config/theme/app_theme.dart';
import 'package:uno/presentation/providers/count_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // this widget is the root of your application
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routers.route(),
      theme: AppTheme(dark: theme , selectedColor: 2).getTheme(),
    );
  }
}
