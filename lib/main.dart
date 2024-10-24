import 'package:brainwave/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.normal,
          fontSize: 14.0,
        ),
      ),
    ),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.light,
    title: 'Brain Wave',
    initialRoute: '/',
    getPages: routes,
  ));

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

    (GetPlatform.isMobile)
        ? runApp(GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.system,
            defaultTransition: Transition.cupertinoDialog,
            initialRoute: '/',
            getPages: routes,
          ))
        : runApp(DevicePreview(
            builder: (context) => GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData.light(),
                  darkTheme: ThemeData.dark(),
                  themeMode: ThemeMode.system,
                  defaultTransition: Transition.cupertinoDialog,
                  initialRoute: '/',
                  getPages: routes,
                  builder: DevicePreview.appBuilder,
                ),
            enabled: true));
  }
}
