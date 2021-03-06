import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ["option1", "option2", "option3"];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Listview")),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => (
                  ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  )))
                .toList(),
          ],
        ));
  }
}
