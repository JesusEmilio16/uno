import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('hola card 1'),
              ),
            ),
            Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(15.0)),
                  side: BorderSide(color: Colors.red)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("card rounded"),
              ),
            ),
            Card(
              elevation: 5.0,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('hola card 3'),
              ),
            ),
            Card(
              elevation: 8.0,
              child: Stack(
                children: [
                  Image.network('https://wallpapers.com/images/featured-full/fondos-de-goku-vhm3f71ddueli0kl.jpg',
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Text("hola vegitto"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
