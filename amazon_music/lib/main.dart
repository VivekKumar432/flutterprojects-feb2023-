import 'package:amazon_music/routes/routes.dart';
import 'package:amazon_music/shared/Theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: getRoutes(),
        initialRoute: "/",
        themeMode: themeProvider.themeMode,
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        // home: MySplashScreen(),
      );
    },
  ));
}
