import 'package:flutter/material.dart';

import 'package:preferences_app/shared_preferences/preferences.dart';

import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routerName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      drawer: const SlideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Divider(),
          Text('isDarkmode: ${ Preferences.isDarkmode }'),
          const Divider(),
          Text('Género: ${ Preferences.genre }'),
          const Divider(),
          Text('Nombre: ${ Preferences.name }'),
          const Divider(),

        ],
      )
   );
  }
}