import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text("Hola mundo"),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            "Irure laborum elit occaecat reprehenderit cupidatat nulla deserunt. Duis ullamco dolore in aliquip pariatur aute eiusmod in ut nostrud nisi. Dolor irure reprehenderit ut occaecat enim labore officia minim deserunt velit excepteur amet."),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text("Cancelar")),
          FilledButton(
              onPressed: () => context.pop(), child: const Text("Aceptar"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbars y dialogos")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      "Sunt est laboris consectetur ea amet officia sit amet reprehenderit labore Lorem minim proident sint. Minim non sit consequat proident ad. Incididunt irure esse minim elit commodo ipsum laboris in et nulla duis consequat ad reprehenderit. Eiusmod aute nostrud sunt non adipisicing nisi exercitation ad. Excepteur non minim aliquip ad do sit. Aliqua mollit Lorem cupidatat in irure ea deserunt pariatur consectetur.")
                ]);
              },
              child: const Text("Licencias usadas")),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar diálogo")),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
