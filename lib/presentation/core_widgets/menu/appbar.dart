import 'package:flutter/material.dart';
import 'package:testwebsite/core/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: textPrimaryLight),
      backgroundColor: background,
      title: Row(
        children: [
          Image.asset(
            'assets/img/logo.png',
            height: 60,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
