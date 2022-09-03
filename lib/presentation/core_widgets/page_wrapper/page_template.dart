import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:testwebsite/core/constants.dart';
import 'package:testwebsite/presentation/core_widgets/menu/appbar.dart';
import 'package:testwebsite/presentation/core_widgets/menu/drawer.dart';
import 'package:testwebsite/presentation/core_widgets/menu/menu_bar.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;

  const PageTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);

    return Scaffold(
      endDrawer: const CustomDrawer(),
      backgroundColor: background,
      appBar: responsiveValue.isSmallerThan(TABLET)
          ? const PreferredSize(
              preferredSize: Size(double.infinity, 60), child: CustomAppBar())
          : const PreferredSize(
              preferredSize: Size(double.infinity, 66), child: MenuBar()),
      body: child,
    );
  }
}
