import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:testwebsite/core/constants.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/centered_constraint_wrapper.dart';

class KarriereStart extends StatelessWidget {
  const KarriereStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.pink,
            Colors.white,
          ],
        ),
      ),
      child: CenteredConstrainedWrapper(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumn(
              columnVerticalDirection: VerticalDirection.up,
              columnMainAxisSize: MainAxisSize.min,
              layout: responsiveValue.isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Baby Shark dududu',
                        style: GoogleFonts.lato(
                          color: textPrimaryLight,
                          fontWeight: FontWeight.bold,
                          height: 0.9,
                          fontSize:
                              responsiveValue.isSmallerThan(DESKTOP) ? 40 : 70,
                        ),
                      ),
                    )),
                ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: responsiveValue.equals(TABLET) ? 120 : 50,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/img/bild4.jpg')),
                    ))
              ]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata',
              style: GoogleFonts.lato(
                color: textPrimaryLight,
                fontWeight: FontWeight.bold,
                height: 0.9,
                fontSize: responsiveValue.isLargerThan(TABLET) ? 38 : 22,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
