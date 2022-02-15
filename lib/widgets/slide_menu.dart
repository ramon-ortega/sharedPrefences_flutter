import 'package:flutter/material.dart';

import 'package:preferences_app/screens/screens.dart';


class SlideMenu extends StatelessWidget {
  const SlideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            const _DrawerHeader(),

            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home_outlined),
              onTap: (){
                Navigator.pushReplacementNamed(context, HomeScreen.routerName);
              },
            ),
                        ListTile(
              title: const Text('People'),
              leading: const Icon(Icons.people_outlined),
              onTap: (){

              },
            ),
                        ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings_outlined),
              onTap: (){
                Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
              },
            )
          ],
        ),
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/menu-img.jpg"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}