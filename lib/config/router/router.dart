import 'package:uno/presentation/screens/screen.dart';


class Routers {
  static route(){
    return{
      '/' : (context) => const HomeScreen(),
      'button' : (context) => const ButtonScreen(),
      'card' : (context) => const CardScreen()
    };
  }
}