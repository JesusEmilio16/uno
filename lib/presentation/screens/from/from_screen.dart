import 'package:flutter/material.dart';
import 'package:uno/presentation/screens/from/radio/radio_screen.dart';
import 'package:uno/presentation/screens/from/text/text_screen.dart';

class FromScreen extends StatefulWidget {
  const FromScreen({super.key});

  @override
  State<FromScreen> createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  int _indicador = 0;
  List<Widget> _elementos = <Widget>[
      TextScreen(),
      RadioScreen(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hola from')),
      body: _elementos.elementAt(_indicador),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indicador,
        onTap: (value) {
          setState(() {
            _indicador = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_decrease),
            label: 'text',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.radio), label: 'radio'),
        ],
      ),
    );
  }
}
