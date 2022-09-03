import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testwebsite/presentation/screens/not_found/page_notfound_screen.dart';

import '../presentation/screens/about_us/about_us_screen.dart';
import '../presentation/screens/contact_us/contact_screen.dart';
import '../presentation/screens/home_screen/home_screen.dart';
import '../presentation/screens/karriere_screen/karriere_screen.dart';

const String homeScreenPath = '/home';
const String aboutUsScreenPath = '/aboutus';
const String karriereScreenPath = '/karriere';
const String contactUsScreenPath = '/contactus';

final routes = RouteMap(
  onUnknownRoute: (route) {
    return const MaterialPage(child: PageNotFoundScreen());
  },
  //Routes im Key Value Format
  routes: {
    '/': (context) => const Redirect(homeScreenPath),
    homeScreenPath: (_) => const MaterialPage(child: HomeScreen()),
    aboutUsScreenPath: (_) => const MaterialPage(child: AboutUsScreen()),
    karriereScreenPath: (_) => const MaterialPage(child: KarriereScreen()),
    contactUsScreenPath: (_) => const MaterialPage(child: ContactUsScreen()),
    //mit :id signalisieren wir Parameter
    /*  karriereScreenPath + '/plattform/:id': (info) {
      if (info.pathParameters['id'] == 'android') {
        return const MaterialPage(child: Text('Android'));
      }
      if (info.pathParameters['id'] == 'ios') {
        return const MaterialPage(child: Text('ios'));
      }
      return const MaterialPage(child: Text('Plattform nicht gefunden'));
    }*/
  },
);
