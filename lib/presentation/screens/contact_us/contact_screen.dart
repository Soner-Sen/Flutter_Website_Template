import 'package:flutter/material.dart';
import 'package:testwebsite/presentation/core_widgets/page_wrapper/page_template.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        child: Container(
      color: Colors.purple,
    ));
  }
}
