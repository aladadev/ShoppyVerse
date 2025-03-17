import 'package:flutter/material.dart';
import 'package:shoppyverse/utils/theme/theme.dart';

void main() {
  runApp(ShoppyVerse());
}

class ShoppyVerse extends StatelessWidget {
  const ShoppyVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: Text('ShoppyVerse')),
        body: Center(child: Text('Welcome to ShoppyVerse')),
      ),
    );
  }
}
