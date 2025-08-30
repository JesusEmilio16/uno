import 'package:flutter/material.dart';
import 'package:uno/config/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'button');
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ...Routers.pages.map((res) {
              return ListTile(
                title: Text(res.title),
                subtitle: Text(res.description),
                onTap: (){
                  Navigator.pushNamed(context, res.patch);
                },
                leading: Icon(res.icon),
                );

            }).toList(),
          ],
        ),
      ),
    );
  }
}
