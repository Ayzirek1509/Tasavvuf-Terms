import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/hadiths.dart';
import 'screens/welcome_screen.dart';
import 'utils/app_colors.dart';
import 'utils/theme_provider.dart';
import 'services/notification_service.dart'; // 🔥 QO‘SHILDI

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 HADISLAR YUKLANADI
  await loadHadiths();

  // 🔔 NOTIFICATION INIT
  await NotificationService.init();

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const TasavvufApp(),
    ),
  );
}

class TasavvufApp extends StatelessWidget {
  const TasavvufApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Tasavvuf atamalari',
          debugShowCheckedModeBanner: false,

          themeMode:
              themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,

          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
            primaryColor: AppColors.primaryGreen,
            fontFamily: 'Roboto',

            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.primaryGreen,
              foregroundColor: Colors.white,
              elevation: 0,
              centerTitle: false,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.darkBackground,
            primaryColor: AppColors.darkPrimary,
            appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.darkPrimary,
              foregroundColor: Colors.white,
              elevation: 0,
            ),
          ),

          home: const WelcomeScreen(),
        );
      },
    );
  }
}