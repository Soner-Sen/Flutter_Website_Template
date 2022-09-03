import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testwebsite/core/constants.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/centered_constraint_wrapper.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/page_template.dart';
import 'package:testwebsite/presentation/screens/home_screen/widgets/bild1_widget.dart';
import 'package:testwebsite/presentation/screens/home_screen/widgets/bild2_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partBlocks = [
      const CenteredConstrainedWrapper(child: Bild1Widget()),
      const SizedBox(height: 30),
      const CenteredConstrainedWrapper(child: Bild2Widget()),
    ];

    return PageTemplate(
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: partBlocks.length,
            itemBuilder: (context, index) {
              return partBlocks[index];
            }));
  }
}
