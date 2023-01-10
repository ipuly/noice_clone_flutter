import 'package:assignment7_noice_app/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import 'provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyTheme.darkTheme,
      darkTheme: MyTheme.darkTheme,
      home: const MainPages(),
    );
  }
}
