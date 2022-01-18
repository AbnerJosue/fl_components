import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTypeDinamic(),
          SizedBox(height:20,),
          CustoCardType2(imageUrl: 'https://kaikucaffelatte.com/blog/wp-content/uploads/2020/03/shutterstock_510679489-scaled.jpg',name: 'Hermoso paisaje',),
          SizedBox(height:20),
          CustoCardType2(imageUrl: 'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg'),
          SizedBox(height:20),
          CustoCardType2(imageUrl: 'https://i.pinimg.com/originals/30/12/b6/3012b6afc0d97a7b27fe10eb61891602.jpg'),
          SizedBox(height:100),

        ],
      ),
    );
  }
}
