import 'package:calculate/presentation/app/constants/app_text.dart';
import 'package:calculate/presentation/app/theme/app_theme.dart';
import 'package:calculate/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: AppThemes.appTheme,
      home: const HomePage(),
    );
  }
}
