import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustoCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;
  const CustoCardType2({
    Key? key,
    required this.imageUrl,
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: AppTheme.lightTheme.primaryColor.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
   
        if(name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name!),
          )
      ]),
    );
  }
}
