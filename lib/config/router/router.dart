import 'package:flutter/material.dart';
import 'package:uno/config/router/app_router.dart';
import 'package:uno/presentation/screens/screen.dart';

class Routers {
  static final List<AppRouter> pages = [
    AppRouter(
      patch: "/",
      title: "Home",
      description: "pantalla de inicio",
      icon: Icons.home,
      context: (context) => const HomeScreen(),
    ),
    AppRouter(
      patch: "button",
      title: "Button",
      description: "pantalla que contiene los botones",
      icon: Icons.smart_button,
      context: (context) => const ButtonScreen(),
    ),
    AppRouter(
      patch: "card",
      title: "Card",
      description: "pantalla contiene la configuracion de las cards",
      icon: Icons.card_travel,
      context: (context) => const CardScreen(),
    ),
    AppRouter(
      patch: "card",
      title: "Card2",
      description: "pantalla contiene la configuracion de las cards",
      icon: Icons.card_travel,
      context: (context) => const CardScreen(),
    ),
  ];

  static route() => {for (var page in pages) page.patch: page.context};
}
