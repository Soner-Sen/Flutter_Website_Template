import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testwebsite/core/constants.dart';

class ItemInMenu extends StatelessWidget {
  final String text;
  final String path;
  final bool inDrawer;
  const ItemInMenu(
      {Key? key,
      required this.text,
      required this.inDrawer,
      required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(path);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(text,
              style: GoogleFonts.lato(
                  fontSize: 15,
                  color: inDrawer ? textPrimaryDark : textPrimaryLight,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
