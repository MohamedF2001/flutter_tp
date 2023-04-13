import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  Color _appBarColor = Colors.blue; // Couleur de base de l'appBar

  // Liste des couleurs disponibles
  final List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple
  ];

  // Méthode pour changer la couleur de l'appBar
  void _changeAppBarColor(Color color) {
    setState(() {
      _appBarColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appBarColor, // Couleur de l'appBar
        title: const Text('Paramètres'),
      ),
      body: Center(
        child: DropdownButton(
          value: _appBarColor, // Couleur par défaut
          items: _colors.map((Color color) {
            return DropdownMenuItem(
              value: color,
              child: Container(
                height: 50.0,
                width: 200.0,
                color: color,
              ),
            );
          }).toList(),
          onChanged: (Color? color) {
            _changeAppBarColor(color!); // Changer la couleur de l'appBar
          },
        ),
      ),
    );
  }
}
