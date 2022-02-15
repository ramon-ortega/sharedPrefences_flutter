import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/slide_menu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static String routerName = 'Settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  // bool isDarkmode = true;
  // String name = 'Jesus';
  // int genreValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      drawer: const SlideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),

              const Divider(),

              SwitchListTile.adaptive(
                title: const Text('Darkmode'),
                value: Preferences.isDarkmode, 
                onChanged: (bool value){
                  setState(() {
                    Preferences.isDarkmode = value;
                  });
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
                  value ? themeProvider.setThemeDark() : themeProvider.setThemeLight();
                }
              ),

              const Divider(),

              RadioListTile<int>(
                title: const Text('Masculino'),
                value: 1, 
                groupValue: Preferences.genre, 
                onChanged: ( value ){
                  setState(() {
                    Preferences.genre = value ?? 1;
                  });
                }
              ),

              RadioListTile<int>(
                title: const Text('Femenino'),
                value: 2, 
                groupValue: Preferences.genre, 
                onChanged: ( value ){
                  setState(() {
                    Preferences.genre = value ?? 2;
                  });
                }
              ),

              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario'
                  ),
                  onChanged: (value) {
                    setState(() {
                      Preferences.name = value;
                    });
                  },
                ),
              )

            ],
          ),
        ),
      )
   );
  }
}