import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRouters {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // TODO: borrar home
      // MenuOptions(route: 'home',      name: 'Home Screen',       screen: const HomeScreen(),      icon: Icons.home_max_sharp),
       MenuOptions(route: 'Listview1',          name: 'Listview tipo 1',                      screen: const Listview1Screen(),          icon: Icons.list_alt),
       MenuOptions(route: 'Listview2',          name: 'Listview tipo 2',                      screen: const Listview2Screen(),          icon: Icons.list),
       MenuOptions(route: 'Alert',              name: 'Alertas - Alerts',                     screen: const AlertScreen(),              icon: Icons.add_alert_outlined),
       MenuOptions(route: 'Card',               name: 'tarjetas - Cards',                     screen: const CardScreen(),               icon: Icons.credit_card),
       MenuOptions(route: 'Avatar',             name: 'Circle Avatar',                        screen: const AvatarScreen(),             icon: Icons.supervised_user_circle_outlined),
       MenuOptions(route: 'Animated',           name: 'Animated Container',                   screen: const AnimatedScreen(),           icon: Icons.play_circle_outline_rounded),
       MenuOptions(route: 'Inputs',             name: 'Text Inputs',                          screen: const InputsScreen(),             icon: Icons.input_rounded),
       MenuOptions(route: 'Slider',             name: 'Slider && checks',                     screen: const SliderScreen(),             icon: Icons.slow_motion_video_rounded),
       MenuOptions(route: 'ListViewBuilder',    name: 'InfiniteScrol & Pull To Refresh',      screen: const ListViewBuilderScreen(),    icon: Icons.build_circle_outlined),


  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRouters = {};
    appRouters.addAll({ 'home'  : ( BuildContext context ) => const HomeScreen()});


    for (final option in menuOptions) {
      appRouters.addAll({ option.route  : ( BuildContext context ) => option.screen});
      
    }

    return appRouters;
  }
  //static Map<String, Widget Function(BuildContext)> routes = {
   // 'home'     : ( BuildContext context ) => const HomeScreen(),
   // 'listview1': ( BuildContext context ) => const Listview1Screen(),
   // 'listview2': ( BuildContext context ) => const Listview2Screen(),
    //'Alert'    : ( BuildContext context ) => const AlertScreen(),
    //'Card'     : ( BuildContext context ) => const CardScreen()
  //};
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
      return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
      );
  }
}