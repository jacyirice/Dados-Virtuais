import 'package:dados_virtuais/screens/home_page.dart';
import 'package:dados_virtuais/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dados Virtuais',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const HomePage(),
    );
  }
}
