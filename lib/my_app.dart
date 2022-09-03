import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testwebsite/core/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: const RoutemasterParser(),
      //Context benötigt RoutesMap
      routerDelegate: RoutemasterDelegate(
          routesBuilder: (context) => routes), //Übergeben Navigator
      debugShowCheckedModeBanner: false,
      // Liegt um ganze App: Hey wo befinden wir uns
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        defaultScale: true,
        minWidth: 400,
        defaultName: MOBILE,
        breakpoints: const [
          // Unsere Größen
          ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      title: 'Pinson Dev Web',
    );
  }
}
