import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button Screen'),
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Wrap(
            spacing: 20.0,
            runSpacing: 10.0,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("button uno"),
              ),
              ElevatedButton(onPressed: null, child: Text("disable")),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("hola como estas"),
                icon: Icon(Icons.add),
              ),

              FilledButton(onPressed: () {}, child: Text("filled")),
              FilledButton(onPressed: null, child: Text("filled null")),
              FilledButton.icon(
                onPressed: () {},
                label: Text("filled icon"),
                icon: Icon(Icons.add_a_photo),
              ),

              OutlinedButton(onPressed: () {}, child: Text("outline")),
              OutlinedButton(onPressed: null, child: Text("outline disable")),
              OutlinedButton.icon(
                onPressed: () {},
                label: Text("outline"),
                icon: Icon(Icons.abc_rounded),
              ),

              TextButton(onPressed: () {}, child: Text("texto")),
              TextButton(onPressed: null, child: Text("texto disable")),
              TextButton.icon(
                onPressed: () {},
                label: Text("texto"),
                icon: Icon(Icons.abc),
              ),

              IconButton(onPressed: () {}, icon: Icon(Icons.read_more)),
              IconButton(onPressed: null, icon: Icon(Icons.read_more)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.abc_rounded),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  iconColor: WidgetStatePropertyAll(Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
