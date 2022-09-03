import 'package:flutter/material.dart';
import 'package:testwebsite/core/constants.dart';
import 'package:testwebsite/core/routes.dart';
import 'package:testwebsite/presentation/core_widgets/menu/logo_home.dart';
import 'package:testwebsite/presentation/core_widgets/menu/menu_item.dart';

import '../../screens/home_screen/home_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const HomeLogo(
                  path: '/',
                ),
                const Spacer(),
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.close,
                      color: textPrimaryDark,
                      size: 19,
                    ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const ItemInMenu(
                text: 'Home', inDrawer: true, path: homeScreenPath),
            const SizedBox(height: 20),
            const ItemInMenu(
                text: 'About us', inDrawer: true, path: '/aboutus'),
            const SizedBox(height: 20),
            const ItemInMenu(
                text: 'Karriere', inDrawer: true, path: '/karriere'),
            const SizedBox(height: 20),
            const ItemInMenu(
                text: 'Contact us', inDrawer: true, path: '/contactus'),
          ],
        ),
      ),
    );
  }
}
