import 'package:flutter/material.dart';
import 'package:prefusuapp/src/pages/home_page.dart';
import 'package:prefusuapp/src/pages/settings_page.dart';
import 'package:prefusuapp/src/share_pref/preferencias_usuario.dart';
 
void main() async {

  final prefs = new PreferenciasUsuario();
  await prefs.initPref();
  
  runApp(MyApp());
  
}
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName     : ( BuildContext context ) => HomePage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage(),
      },
    );
  }
}