import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const intitalRoute = 'homeScreen';
  static final menuOptions = <MenuOption>[
    // TODO: borrar homeScreen
    // MenuOption(route: 'homeScreen', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home ),
    MenuOption(route: 'listview1', name: 'Listview 1', screen: const Listview1Screen(), icon: Icons.list ),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: const Listview2Screen(), icon: Icons.list_alt ),
    MenuOption(route: 'cardScreen', name: 'card', screen: const CardScreen(), icon: Icons.card_membership_outlined ),
    MenuOption(route: 'alertScreen', name: 'Alert', screen: const AlertScreen(), icon: Icons.warning ),
    MenuOption(route: 'avatarScreen',name: 'Avatar', screen: const AvatarScreen(), icon: Icons.emoji_people),
    MenuOption(route: 'AnimatedScreen',name: 'Animated', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'InputsScreen',name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),


  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'cardScreen': (BuildContext context) => const CardScreen(),
  //   'alertScreen': (BuildContext context) => const AlertScreen(),
  //   'homeScreen': (BuildContext context) => const HomeScreen(),
  // };
   
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'homeScreen': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
