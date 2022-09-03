import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:testwebsite/presentation/screens/karriere_screen/widgets/karriere_start.dart';

import '../../../core/constants.dart';
import '../../core_widgets/page_wrapper/centered_constraint_wrapper.dart';
import '../../core_widgets/page_wrapper/page_template.dart';

class KarriereScreen extends StatelessWidget {
  const KarriereScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partBlocks = [
      const KarriereStart(),
    ];

    return PageTemplate(
        child: ListView.builder(
            itemCount: partBlocks.length,
            itemBuilder: (context, index) {
              return partBlocks[index];
            }));
  }
}
