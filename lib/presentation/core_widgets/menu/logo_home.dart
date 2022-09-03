import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class HomeLogo extends StatelessWidget {
  final String path;
  const HomeLogo({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(path);
        },
        child: Image.asset(
          'assets/img/logo.png',
          height: 60,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
