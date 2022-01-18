import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardTypeDinamic extends StatelessWidget {
  const CustomCardTypeDinamic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.lightTheme.primaryColor,
            ),
            title: const Text('Soy un titulo'),
            subtitle: const Text("HOLA"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:() {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed:() {},
                  child: const Text('ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
