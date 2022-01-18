import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              child: const Text("AJ"),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://www.muycomputer.com/wp-content/uploads/2022/01/Battlefield-2042-1.jpg'),
          maxRadius: 140,
        )
      ),
    );
  }
}
