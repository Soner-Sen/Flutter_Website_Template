import 'package:flutter/material.dart';
import 'package:testwebsite/core/routes.dart';
import 'package:testwebsite/presentation/core_widgets/menu/logo_home.dart';
import 'package:testwebsite/presentation/core_widgets/menu/menu_item.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final responsiveValue = ResponsiveWrapper.of(context);

    return Container(
        height: 66,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          // Hier kommen die Appbar-Elemente rein
          children: const [
            HomeLogo(
              path: '/',
            ),
            Spacer(),
            ItemInMenu(
              text: 'Home',
              inDrawer: false,
              path: homeScreenPath,
            ),
            ItemInMenu(
              text: 'About us',
              inDrawer: false,
              path: aboutUsScreenPath,
            ),
            ItemInMenu(
              text: 'Karriere',
              inDrawer: false,
              path: karriereScreenPath,
            ),
            ItemInMenu(
              text: 'Contact us',
              inDrawer: false,
              path: contactUsScreenPath,
            ),
          ],
        ));
  }
}
