import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String? _musica;
  bool _favorito=false;

  void send() {
    print(_nameController.text);
    print(_musica);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "digite el nombre",
                    icon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 10),

                DropdownButtonFormField<String>(
                  value: _musica,
                  decoration: InputDecoration(label: Text("musica favorita")),
                  items: [
                    DropdownMenuItem(value: "rock", child: Text("rock")),
                    DropdownMenuItem(value: "pop", child: Text("pop")),
                    DropdownMenuItem(value: "jazz", child: Text("jazz")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _musica = value;
                    });
                  },
                ),
                const SizedBox(height: 10),

                SwitchListTile(
                  value: _favorito,
                  onChanged: (val) => setState(() {
                    _favorito= val;
                  }),
                  title: const Text("favorito"),
                ),

                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: this.send,
                    child: const Text("send"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
