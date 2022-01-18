import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ["option1", "option2", "option3"];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final lightTheme = AppTheme.lightTheme;


    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Listview2")),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(options[i]),
                trailing:Icon(Icons.arrow_forward_ios_rounded,color: lightTheme.primaryColor),
                onTap: (){
                  print(options[i]);
                },
              );
            },
            separatorBuilder: (_,__) => const Divider(),
            itemCount: options.length));
  }
}
