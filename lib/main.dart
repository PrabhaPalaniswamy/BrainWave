import 'package:brainwave/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // w = MediaQuery.of(context).size.width;
  // h = MediaQuery.of(context).size.height;

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Montserrat',
      brightness: Brightness.light,
      //primaryColor: WebColors.primary,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 14.0),
      ),
    ),
    darkTheme: ThemeData.light(),
    //themeMode: ThemeMode.system,
    title: 'Profinix Technologies',
    initialRoute: '/',
    getPages: routes,
  ));
  Future<void> main() async {
    //await dotenv.load(fileName: ".env");
    WidgetsFlutterBinding.ensureInitialized();

    (GetPlatform.isMobile)
        ? runApp(GetMaterialApp(
            debugShowCheckedModeBanner: false,
            //translationsKeys: Messages().keys,
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
                  // translationsKeys: Messages().keys,
                  theme: ThemeData.light(),
                  darkTheme: ThemeData.dark(),
                  themeMode: ThemeMode.system,
                  defaultTransition: Transition.cupertinoDialog,
                  initialRoute: '/',
                  getPages: routes,
                  // onUnknownRoute: PageNotFound(),
                  builder: DevicePreview.appBuilder,
                ),
            enabled: true));
  }
}
