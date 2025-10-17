import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  String _generoMusical = 'rock';
  bool _futbol=false;
  bool _baseball=false;
  bool _basketball=false;
  bool _patinaje=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("seleccione genero musical"),
            RadioListTile(
              title: Text("rock"),
              value: "rock",
              groupValue: _generoMusical,
              onChanged: (value){
                setState(() {
                  _generoMusical=value??"";
                });
              },
            ),

            RadioListTile(
              title: Text("pop"),
              value: "Pop",
              groupValue: _generoMusical,
              onChanged: (value){
                setState(() {
                  _generoMusical=value??"";
                });
              },
            ),

            const Text("checkbox"),

            CheckboxListTile(
              title: Text("FULVO"),
              value: _futbol,
              onChanged: (value){
                setState(() {
                  _futbol=value??false;
                });
              }
            ),
            CheckboxListTile(
              title: Text("baseball"),
              value: _baseball,
              onChanged: (value){
                setState(() {
                  _baseball=value??false;
                });
              }
            ),
            CheckboxListTile(
              title: Text("basketball"),
              value: _basketball,
              onChanged: (value){
                setState(() {
                  _basketball=value??false;
                });
              }
            ),
            CheckboxListTile(
              title: Text("patinaje"),
              value: _patinaje,
              onChanged: (value){
                setState(() {
                  _patinaje=value??false;
                });
              }
            )

          ],
        ),
      ),
    );
  }
}
