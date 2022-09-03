import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:testwebsite/core/constants.dart';

class Bild1Widget extends StatelessWidget {
  const Bild1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: background,
      ),
      child: ResponsiveRowColumn(
          columnVerticalDirection: VerticalDirection.up,
          rowCrossAxisAlignment: CrossAxisAlignment.center,
          layout: responsiveValue.isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Your website',
                          style: GoogleFonts.lato(
                              color: Colors.pink,
                              fontSize: responsiveValue.isLargerThan(TABLET)
                                  ? 20
                                  : 17,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text('Reach users on every Screen',
                          style: GoogleFonts.lato(
                              color: textPrimaryLight,
                              fontSize: responsiveValue.isLargerThan(TABLET)
                                  ? 60
                                  : 40,
                              height: 0.9,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text('Why are you waiting? Get your website.',
                          style: GoogleFonts.lato(
                            color: textPrimaryLight,
                            fontSize:
                                responsiveValue.isLargerThan(TABLET) ? 20 : 17,
                          )),
                      const SizedBox(height: 20),
                      Icon(Icons.clean_hands_rounded,
                          color: Colors.pink,
                          size:
                              responsiveValue.isLargerThan(TABLET) ? 100 : 70),
                    ],
                  ),
                )),
            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: responsiveValue.equals(TABLET) ? 120 : 50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/img/bild1.jpg',
                    ),
                  ),
                ))
          ]),
    );
  }
}
