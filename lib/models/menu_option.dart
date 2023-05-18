
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption{
  //Seteamps las variables del menu
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    //Obteniendo el valor de cada variable
    //SET
    required this.route,
        required this.icon,
    required this.name,
    required this.screen,
  });

}