import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context){
        return  CupertinoAlertDialog(
          title:  const Text("Titulo"),
          content: Column(
            mainAxisSize:MainAxisSize.min,
            children: const[
              Text('Este es el contenido'),
              SizedBox(height: 10,),
              FlutterLogo(
                size: 100,
              )
            ],

          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar")
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Aceptar")
            ),
          ],
        );
      }
    );

  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: const Text("Titulo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contendio de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Aceptar")
              ),
            ],
          );
        },
        barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pop(context),
      ),
      body: Center(
          child: ElevatedButton(
        // onPressed: () => displayDialogAndroid(context),
        onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text('Mostar alerta', style: TextStyle(fontSize: 16)),
        ),
      )),
    );
  }
}
