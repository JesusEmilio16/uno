import 'package:flutter/material.dart';
import 'package:uno/config/router/router.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: Routers.route(),

      
    );
  }
}