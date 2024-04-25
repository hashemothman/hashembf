import 'package:flutter/material.dart';

class PageImage extends StatelessWidget {
  const PageImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('./assets/images/onboardingone.png'),
    );
  }
}
