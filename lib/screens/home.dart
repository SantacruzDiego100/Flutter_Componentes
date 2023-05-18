import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final MenuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter componentes'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(MenuOptions[index].icon),
            title: Text(MenuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, MenuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: MenuOptions.length,
        ));
  }
}
