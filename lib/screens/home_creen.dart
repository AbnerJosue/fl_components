import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
    final lightTheme = AppTheme.lightTheme;
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Componentes de Flutter"),
          ),
        ),
        body: ListView.separated(
          itemBuilder: (contex, i) => ListTile(
            leading: Icon(menuOptions[i].icon ,color: lightTheme.primaryColor),
            title: Text(menuOptions[i].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const Listview1Screen());
              // Navigator.push(context, route); 
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
