import 'package:flutter/material.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/page_template.dart';
import 'package:testwebsite/presentation/screens/about_us/widgets/aboutus_start.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partBlocks = [
      const AboutUsStart(),
    ];

    return PageTemplate(
        child: ListView.builder(
            itemCount: partBlocks.length,
            itemBuilder: (context, index) {
              return partBlocks[index];
            }));
  }
}
