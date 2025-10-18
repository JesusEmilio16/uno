import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  void _openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("hola dialog"),
        content: Column(
          children: [
            Text("esto es el contenido"),
            Text("esto es otro contenido"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("cerrar"),
          ),
          TextButton(onPressed: () {}, child: const Text("continuar")),
        ],
      ),
    );
  }

  void _openToast(BuildContext context) {
    // Implement toast functionality here
    Fluttertoast.showToast(
      msg: "Esto es un Toast",
      backgroundColor: Colors.blue,
      webBgColor: "blue",
    );
  }

  void _openFlush(BuildContext context) {
    // Implement flush functionality here
    Flushbar(
      title: "esto es un flushbar",
      duration: const Duration(seconds: 5),
      message: "este es el mensaje del flushbar",
      icon: const Icon(Icons.info,),
      leftBarIndicatorColor: Colors.green,
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    _openSnack() {
      ScaffoldMessenger.of(context).clearSnackBars();
      const snack = SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.blue,
        margin: EdgeInsets.all(8.0),
        content: Row(
          children: [
            Icon(Icons.info, color: Colors.white),
            SizedBox(width: 10),
            Text("esto es una snackbar"),
          ],
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Dialog and Snackbar')),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () => _openDialog(context),
              child: const Text('Open Dialog'),
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () => _openSnack(),
              child: const Text('Open snackbar'),
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () => _openToast(context),
              child: const Text('Open Toast'),
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () => _openFlush(context),
              child: const Text('Open Flush'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
