import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testwebsite/core/routes.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/centered_constraint_wrapper.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/page_template.dart';
import 'package:testwebsite/presentation/screens/home_screen/home_screen.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: CenteredConstrainedWrapper(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Text(
                      'Sorry, we couldn\'t find the page you were looking for.',
                      style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff1AB4A1))),
                ),
                const SizedBox(height: 20),
                ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 700),
                    child: Image.asset('assets/img/Error.png')),
                TextButton.icon(
                  onPressed: () {
                    Routemaster.of(context).push(homeScreenPath);
                  },
                  label: Text('Back to Homepage',
                      style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff1AB4A1))),
                  icon: Icon(
                    Icons.ads_click,
                    color: const Color(0xff1AB4A1),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
